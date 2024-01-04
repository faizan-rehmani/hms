# == Schema Information
#
# Table name: appointments
#
#  id         :bigint           not null, primary key
#  date       :datetime
#  status     :integer          default("booked")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  doctor_id  :bigint           not null
#  patient_id :bigint           not null
#  slot_id    :bigint           not null
#
# Indexes
#
#  index_appointments_on_doctor_id   (doctor_id)
#  index_appointments_on_patient_id  (patient_id)
#  index_appointments_on_slot_id     (slot_id)
#
# Foreign Keys
#
#  fk_rails_...  (doctor_id => doctors.id)
#  fk_rails_...  (patient_id => patients.id)
#  fk_rails_...  (slot_id => slots.id)
#
class Appointment < ApplicationRecord
  enum :status, [:booked, :done, :expired]
  
  belongs_to :patient
  belongs_to :doctor
  belongs_to :slot

  # for prescription we only have one prescription associate with it
  has_one :prescription
end
