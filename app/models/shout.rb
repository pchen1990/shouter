class Shout < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user
  has_many :likes
  has_many :liking_users, :through => :likes, :class_name => "User"

  validates :message, :uniqueness => true
end
