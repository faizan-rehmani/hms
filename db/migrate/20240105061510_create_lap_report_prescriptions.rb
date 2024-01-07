class CreateLapReportPrescriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :lap_report_prescriptions do |t|
      t.references :prescription, null: false, foreign_key: true
      t.references :lab_report, null: false, foreign_key: true
      t.datetime :date
      t.references :staff, null: false, foreign_key: true

      t.timestamps
    end
  end
end
