class AddIndexToAvailableSlot < ActiveRecord::Migration[7.1]
  def change
    add_index :available_slots, [:doctor_id, :slot_id], unique: true
  end
end
