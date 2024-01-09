# == Schema Information
#
# Table name: complaints
#
#  id             :bigint           not null, primary key
#  date           :datetime
#  description    :text
#  issue          :integer
#  location       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_complaints_on_appointment_id  (appointment_id)
#  index_complaints_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class ComplaintTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
