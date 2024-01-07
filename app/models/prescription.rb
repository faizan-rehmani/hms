# == Schema Information
#
# Table name: prescriptions
#
#  id             :bigint           not null, primary key
#  duration       :integer
#  instruction    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint           not null
#
# Indexes
#
#  index_prescriptions_on_appointment_id  (appointment_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#
class Prescription < ApplicationRecord
  belongs_to :appointment

  # medicine and prescription relation
  has_many :medicine_prescriptions
  has_many :medicines, through: :medicine_prescriptions

  # lab report and prescription relation
  has_many :lap_report_prescriptions
  has_many :lab_reports, through: :lap_report_prescriptions
end
