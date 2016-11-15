class CreateUserRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :user_rooms do |t|
      t.string :user_id
      t.string :address_id

      t.timestamps
    end
  end
end
