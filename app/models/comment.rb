class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  #validates :description
  delegate :email, to: :user, prefix: true

  def user_name
    user.email
  end
  
end
