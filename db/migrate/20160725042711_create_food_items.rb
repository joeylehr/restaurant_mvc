class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :cost
      t.string :serving_size
      t.string :ingredients
      t.timestamps null: false
    end
  end
end
