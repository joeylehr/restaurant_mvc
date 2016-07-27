class CreateLocationFoodItems < ActiveRecord::Migration
  def change
    create_table :location_food_items do |t|
      t.integer :food_item_id
      t.integer :location_id
      t.timestamps null: false
    end
  end
end
