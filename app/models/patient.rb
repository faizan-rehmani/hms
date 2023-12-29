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
end
