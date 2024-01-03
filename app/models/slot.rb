# == Schema Information
#
# Table name: slots
#
#  id         :bigint           not null, primary key
#  end_time   :string
#  start_time :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Slot < ApplicationRecord
  has_many :available_slots
  has_many :availabilities, through: :available_slots
end
