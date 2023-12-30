class AdminsController < ApplicationController
  before_action :authenticate_admin

  def dashboard
  end

  private
    def authenticate_admin
      if current_user
        if current_user.role_type == "Admin"
          true
        else
          redirect_to root_path, alert: "Access Denied You are not a Admin"
        end
      else
        redirect_to new_user_session_path, alert: "To Access the page, Login first"
      end
    end
end
