class User < ApplicationRecord
  has_many :posts
  has_many :rooms, through: :user_rooms
end
