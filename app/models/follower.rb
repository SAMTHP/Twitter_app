class Follower < ApplicationRecord

  belongs_to :user_follower, class_name: "User"
  has_and_belongs_to_many :following, class_name: "User"

end
