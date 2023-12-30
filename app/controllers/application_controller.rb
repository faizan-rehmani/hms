class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if resource.role_type == "Patient"
      patient_dashboard_path
    elsif resource.role_type == "Admin"
      admin_dashboard_path
    end
  end
end
