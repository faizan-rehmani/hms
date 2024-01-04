class CreateMedicinePrescriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :medicine_prescriptions do |t|
      t.references :medicine, null: false, foreign_key: true
      t.references :prescription, null: false, foreign_key: true
      t.integer :duration
      t.string :when_to_take
      t.boolean :before_meal

      t.timestamps
    end
  end
end
