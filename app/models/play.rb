class Play < ActiveRecord::Base
  attr_accessible :play, :notes, :goal_id, :complete
  belongs_to :goal
  belongs_to :user

  validates :play, presence: true,
               length: { maximum: 35 }
end
