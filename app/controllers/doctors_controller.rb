class DoctorsController < ApplicationController
  def availability
    @availabilities = AvailableSlot.where(doctor_id: params[:id]).joins(:slot).select(:start_time, :end_time, :status, :id)
  end

  def dashboard
  end

  def new_prescription
    if request.get?
      @prescription = Prescription.new
      @appointment = params[:id]
    end
    if request.post?
      puts "=============="
      puts params
      puts "==============="
      @appointment = Appointment.find(params[:id])
      @prescription = @appointment.create_prescription(instruction: "don't drink alcohol and eat healthy food", duration: 5)
      params[:prescriptions].pop
      params[:reports].pop
      medicines = params[:prescriptions]
      reports = params[:reports]

      medicines.each do |medicine|
        @prescription.medicine_prescriptions.create!(before_meal: medicine[:before_meal], duration: medicine[:duration], when_to_take: medicine[:when_to_take], medicine_id: medicine[:medicine_id])
      end

      reports.each do |report|
        @prescription.lap_report_prescriptions.create(lab_report_id: params[:report_id])
      end

      @appointment.status = 'done'
      @appointment.save
      redirect_to "/doctor/appointments?id=#{current_user.id}", notice: "Prescribed Successfully"
    end
  end


  def appointment
    @appointments = Appointment.where(doctor_id: current_user.role.id)
  end

  def availabilities
    @availabilities = Availability.where(doctor_id: current_user.role.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'Doctor Created Successfully'
    else
      render :new, status: 422
    end
  end

  def set_availability
    if request.post?
      if params[:start] && params[:end]
        if params[:start] < params[:end]
          doctor = current_user.role
          avail = doctor.availabilities.create!(start_time: params[:start], end_time: params[:end])
          time = params[:start]

          while time < params[:end]
            next_slot = (Time.parse(time) + 30.minutes).strftime("%H:%M")
            avail.available_slots.create!(slot: Slot.find_by_start_time_and_end_time(time, next_slot), doctor_id: doctor.id_value)
            time = next_slot
          end
        end
      end
      
    end
  end

  private

  def user_params
    # params.require
    params.require(:user).permit(:name, :email, :gender, :dob, :photo, :password, :password_confirmation).merge({ role: Doctor.new(doctor_params) })
  end

  def doctor_params
    params.require(:user).permit(:qualification, :work_experience, :specialization_id)
  end
end
