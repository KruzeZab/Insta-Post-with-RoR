class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  belongs_to :user
  validates :photo, :description, :user_id, presence: true
  belongs_to :user
  has_many :comments
  delegate :photo, :name, to: :user, prefix: true
  self.per_page = 1

  acts_as_votable

  def user_name
    user.email
  end

  
end
