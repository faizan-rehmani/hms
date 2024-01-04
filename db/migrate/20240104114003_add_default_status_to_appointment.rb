class AddDefaultStatusToAppointment < ActiveRecord::Migration[7.1]
  def change
    change_column_default :appointments, :status, from: nil, to: 0
  end
end
