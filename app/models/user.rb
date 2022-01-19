class User < ApplicationRecord
  has_secure_password
  has_one_attached :photo
  validates :email, presence: true, uniqueness: true
  has_many :posts
  has_many :posts, dependent: :destroy
  has_many :comments
  
  acts_as_voter

  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users

  
end
