class PatientsController < ApplicationController
  before_action :authenticate_patient

  def dashboard
    @specializations = Specialization.limit(10)
    @remain_specializations = Specialization.offset(10)
  end

  def specialization
    puts params[:id]
    @doctors = Doctor.where(specialization_id: params[:id])
  end

  private
    def authenticate_patient
      if current_user
        if current_user.role_type == "Patient"
          true
        else
          redirect_to root_path, alert: "Access Denied You are not a patient"
        end
      else
        redirect_to new_user_session_path
      end
    end
end
