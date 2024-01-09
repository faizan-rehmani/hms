# == Schema Information
#
# Table name: reviews
#
#  id             :bigint           not null, primary key
#  cleanliness    :integer
#  reason         :text
#  satisfaction   :integer
#  suggestions    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint
#  user_id        :bigint           not null
#
# Indexes
#
#  index_reviews_on_appointment_id  (appointment_id)
#  index_reviews_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#  fk_rails_...  (user_id => users.id)
#
class Review < ApplicationRecord
  belongs_to :appointment, optional: true
  belongs_to :user
end
