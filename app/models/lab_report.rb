# == Schema Information
#
# Table name: lab_reports
#
#  id                :bigint           not null, primary key
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  specialization_id :bigint           not null
#
# Indexes
#
#  index_lab_reports_on_specialization_id  (specialization_id)
#
# Foreign Keys
#
#  fk_rails_...  (specialization_id => specializations.id)
#
class LabReport < ApplicationRecord
  belongs_to :specialization

  # lab report and prescription relation
  has_many :lap_report_prescriptions
  has_many :prescriptions, through: :lap_report_prescriptions
end
