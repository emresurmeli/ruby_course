class AddUsersToRooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :rooms, :user, foreign_key: true
  end
end
