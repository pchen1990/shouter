class User < ActiveRecord::Base
  attr_accessible :email, :password, :username
  has_many :shouts
  has_many :likes
  has_many :liked_shouts, :through => :likes, :class_name =>"Shout"

  validates :username, :presence => true
  validates :username, :uniqueness => true
  validates :username, :length => {:minimum => 0, :maximum => 10}
end
