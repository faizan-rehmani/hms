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
class Room < ApplicationRecord
  has_many :beds, before_add: :check_association

  private
  def check_association(bed)
    throw(:abort) unless check_bed_creation(bed.room)
  end

  def check_room_creatable(room)
    room.has_multiple_beds || room.beds.count < 1
  end
end
