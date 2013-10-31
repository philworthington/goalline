class Goal < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :user
  has_many :plays

  validates :name, presence: true,
               length: { maximum: 45 }
end
