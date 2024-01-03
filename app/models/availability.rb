# == Schema Information
#
# Table name: availabilities
#
#  id         :bigint           not null, primary key
#  end_time   :string
#  start_time :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  doctor_id  :bigint           not null
#
# Indexes
#
#  index_availabilities_on_doctor_id  (doctor_id)
#
# Foreign Keys
#
#  fk_rails_...  (doctor_id => doctors.id)
#
class Availability < ApplicationRecord
  belongs_to :doctor
  has_many :available_slots
  has_many :slots, through: :available_slots
end
