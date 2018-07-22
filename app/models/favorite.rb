class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :like, class_name: 'Micropost'
  #A Favorite belongs to like(user)
  
  validates :user_id, presence: true
  validates :like_id, presence: true
end
