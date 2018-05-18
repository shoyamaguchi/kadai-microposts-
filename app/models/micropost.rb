class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  has_many :favo_users, class_name: "User", foreign_key: "user_id", through: :favorites, source: :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
