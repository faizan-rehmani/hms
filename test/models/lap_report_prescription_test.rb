# == Schema Information
#
# Table name: lap_report_prescriptions
#
#  id              :bigint           not null, primary key
#  date            :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  lab_report_id   :bigint           not null
#  prescription_id :bigint           not null
#  staff_id        :bigint           not null
#
# Indexes
#
#  index_lap_report_prescriptions_on_lab_report_id    (lab_report_id)
#  index_lap_report_prescriptions_on_prescription_id  (prescription_id)
#  index_lap_report_prescriptions_on_staff_id         (staff_id)
#
# Foreign Keys
#
#  fk_rails_...  (lab_report_id => lab_reports.id)
#  fk_rails_...  (prescription_id => prescriptions.id)
#  fk_rails_...  (staff_id => staffs.id)
#
require "test_helper"

class LapReportPrescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
