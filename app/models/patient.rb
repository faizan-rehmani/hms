# == Schema Information
#
# Table name: patients
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Patient < ApplicationRecord
  include Role

  # for managing the appointment
  has_many :appointments
  has_many :doctors, through: :appointments
end
