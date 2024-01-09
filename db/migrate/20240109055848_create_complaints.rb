class CreateComplaints < ActiveRecord::Migration[7.1]
  def change
    create_table :complaints do |t|
      t.references :user, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true
      t.integer :issue
      t.datetime :date
      t.integer :location
      t.text :description

      t.timestamps
    end
  end
end
