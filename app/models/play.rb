class Play < ActiveRecord::Base
  attr_accessible :play, :notes, :goal_id
  belongs_to :goal
  belongs_to :user
end
