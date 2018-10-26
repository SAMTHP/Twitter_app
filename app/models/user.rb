class User < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true

  has_many :sent_tweets, class_name: "Tweet", foreign_key: "author_id"
  has_and_belongs_to_many :received_tweets, class_name: "Tweet"

  has_many :tweet_likers, class_name: "Tweet", foreign_key: "liker_id"
  has_and_belongs_to_many :received_likers, class_name: "Tweet"

  has_many :followers, class_name: "Follower", foreign_key: "user_follower_id"
  has_and_belongs_to_many :received_followers, class_name: "Follower"

  has_many :sent_messages, class_name: "Privatemessage", foreign_key: "sender_id"
  has_and_belongs_to_many :received_messages, class_name: "Privatemessage"

end
