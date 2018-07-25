class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  #A Favorite belongs to like(user)
  
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
