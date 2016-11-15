class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :rating
      t.string :description
      t.references :cheese, foreign_key: true

      t.timestamps
    end
  end
end
