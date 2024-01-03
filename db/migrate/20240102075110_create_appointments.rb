class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.integer :status
      t.references :slot, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
