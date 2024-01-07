class CreateLabReports < ActiveRecord::Migration[7.1]
  def change
    create_table :lab_reports do |t|
      t.string :name
      t.references :specialization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
