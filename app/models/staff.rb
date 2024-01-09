# == Schema Information
#
# Table name: staffs
#
#  id         :bigint           not null, primary key
#  post       :string
#  shift      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Staff < ApplicationRecord
  include Role

  enum :shift, [:morning, :day, :night]
end
