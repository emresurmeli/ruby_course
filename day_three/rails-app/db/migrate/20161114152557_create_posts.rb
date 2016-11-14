class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :created_at
      t.string :owner

      t.timestamps
    end
  end
end
