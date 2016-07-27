class CreateFoodItemIngredients < ActiveRecord::Migration
  def change
    create_table :food_item_ingredients do |t|
      t.integer :food_item_id
      t.integer :ingredient_id
      t.timestamps null: false
    end
  end
end
