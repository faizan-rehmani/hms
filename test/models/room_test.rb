# == Schema Information
#
# Table name: rooms
#
#  id                :bigint           not null, primary key
#  floor             :integer
#  has_multiple_beds :boolean
#  ward              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
