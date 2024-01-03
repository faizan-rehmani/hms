class CreateAvailabilities < ActiveRecord::Migration[7.1]
  def change
    create_table :availabilities do |t|
      t.references :doctor, null: false, foreign_key: true
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
