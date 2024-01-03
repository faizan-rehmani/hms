class CreateAvailableSlots < ActiveRecord::Migration[7.1]
  def change
    create_table :available_slots do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :slot, null: false, foreign_key: true
      t.references :availability, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
