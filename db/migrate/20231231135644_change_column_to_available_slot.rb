class ChangeColumnToAvailableSlot < ActiveRecord::Migration[7.1]
  def change
    change_column :available_slots, :status, :boolean, default: true
  end
end
