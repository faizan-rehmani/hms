class AdminsController < ApplicationController
  before_action :authenticate_admin

  def dashboard
    @program = Program.first
  end

  def add_programs
    if request.get?
      @program = Program.new
    end

    if request.post?
      @program = Program.new(program_params)

      if @program.save
        redirect_to admin_dashboard_path, notice: "Program Created Successfully"
      else
        render :add_programs, status: 422
      end

    end
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

    def program_params
      params.require(:program).permit(:title, :description, :poster, :specialization_id)
    end
end
