class AppointmentsController < ApplicationController
  
  def book_appointment
    @selected_slot = AvailableSlot.find(params[:id])
    if request.get?
      puts "==============="
      p @slot = @selected_slot.slot
      p @doctor = @selected_slot.doctor
      p @user = @doctor.user
      puts "========================"
    end
    
    if request.post?
      if @selected_slot.status
        doctor = @selected_slot.doctor
        doctor.appointments.create(slot: @selected_slot.slot, patient: current_user.role, date: Date.current)
        @selected_slot.status = false
        @selected_slot.save
        redirect_to patient_dashboard_path, notice: "Appointment Booked Successfully"
      else
        @doctor = @selected_slot.doctor
        redirect_to "/availability?id=#{@doctor.id_value}", alert: "This slot is full, Choose another one"
      end
    end
  end
end
