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
require "test_helper"

class StaffTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
