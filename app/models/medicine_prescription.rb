# == Schema Information
#
# Table name: medicine_prescriptions
#
#  id              :bigint           not null, primary key
#  before_meal     :boolean
#  duration        :integer
#  when_to_take    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  medicine_id     :bigint           not null
#  prescription_id :bigint           not null
#
# Indexes
#
#  index_medicine_prescriptions_on_medicine_id      (medicine_id)
#  index_medicine_prescriptions_on_prescription_id  (prescription_id)
#
# Foreign Keys
#
#  fk_rails_...  (medicine_id => medicines.id)
#  fk_rails_...  (prescription_id => prescriptions.id)
#
class MedicinePrescription < ApplicationRecord
  belongs_to :medicine
  belongs_to :prescription
end
