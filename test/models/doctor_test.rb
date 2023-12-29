# == Schema Information
#
# Table name: doctors
#
#  id                :bigint           not null, primary key
#  qualification     :string
#  work_experience   :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  specialization_id :bigint           not null
#
# Indexes
#
#  index_doctors_on_specialization_id  (specialization_id)
#
# Foreign Keys
#
#  fk_rails_...  (specialization_id => specializations.id)
#
require "test_helper"

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
