# == Schema Information
#
# Table name: programs
#
#  id                :bigint           not null, primary key
#  description       :string
#  title             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  specialization_id :bigint           not null
#
# Indexes
#
#  index_programs_on_specialization_id  (specialization_id)
#
# Foreign Keys
#
#  fk_rails_...  (specialization_id => specializations.id)
#
class Program < ApplicationRecord
  belongs_to :specialization
  has_one_attached :poster
end
