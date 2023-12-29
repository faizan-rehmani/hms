# == Schema Information
#
# Table name: staffs
#
#  id         :bigint           not null, primary key
#  shift      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Staff < ApplicationRecord
  include Role
end
