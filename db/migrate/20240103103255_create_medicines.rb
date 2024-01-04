class CreateMedicines < ActiveRecord::Migration[7.1]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :manufacturer
      t.integer :form
      t.datetime :mfd
      t.datetime :expiry
      t.integer :mg

      t.timestamps
    end
  end
end
