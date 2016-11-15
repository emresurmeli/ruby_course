class AddUsersAndRoomsToUserRooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_rooms, :user, foreign_key: true
    add_reference :user_rooms, :room, foreign_key: true
  end
end
