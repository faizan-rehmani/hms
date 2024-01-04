# == Schema Information
#
# Table name: medicines
#
#  id           :bigint           not null, primary key
#  expiry       :datetime
#  form         :integer
#  manufacturer :string
#  mfd          :datetime
#  mg           :integer
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class MedicineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
