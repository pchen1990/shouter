class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :shout
  # attr_accessible :title, :body
end
