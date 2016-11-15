class CreateCheeses < ActiveRecord::Migration[5.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.integer :price
      t.string :type
      t.string :source

      t.timestamps
    end
  end
end
