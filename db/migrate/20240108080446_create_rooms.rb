class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.integer :floor
      t.string :ward
      t.boolean :has_multiple_beds

      t.timestamps
    end
  end
end
