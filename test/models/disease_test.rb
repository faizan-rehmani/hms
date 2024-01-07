# == Schema Information
#
# Table name: diseases
#
#  id                :bigint           not null, primary key
#  cause             :string
#  description       :text
#  name              :string
#  symptom           :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  specialization_id :bigint           not null
#
# Indexes
#
#  index_diseases_on_specialization_id  (specialization_id)
#
# Foreign Keys
#
#  fk_rails_...  (specialization_id => specializations.id)
#
require "test_helper"

class DiseaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
