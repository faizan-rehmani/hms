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
class Medicine < ApplicationRecord
  enum :form, [:tablet, :capsule, :liquid]

  # medicine and prescription relation
  has_many :medicine_prescriptions
  has_many :prescriptions, through: :medicine_prescriptions
end
