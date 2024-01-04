class CreatePrescriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :prescriptions do |t|
      t.text :instruction
      t.integer :duration
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
