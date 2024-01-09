class CreateBeds < ActiveRecord::Migration[7.1]
  def change
    create_table :beds do |t|
      t.references :room, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
