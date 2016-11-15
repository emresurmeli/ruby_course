class Room < ApplicationRecord
  has_many :users, through: :user_rooms
end
