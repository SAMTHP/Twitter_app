class Tweet < ApplicationRecord

  # validates :content, presence: true

  belongs_to :author, class_name: "User"
  has_and_belongs_to_many :tweet_recipients, class_name: "User"

  belongs_to :liker, class_name: "User"
  has_and_belongs_to_many :liker_recipients, class_name: "User"
end
