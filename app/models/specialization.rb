# == Schema Information
#
# Table name: specializations
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Specialization < ApplicationRecord
  has_many :doctors
end
