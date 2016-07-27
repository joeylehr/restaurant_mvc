class CreateFoodItemOrders < ActiveRecord::Migration
  def change
    create_table :food_item_orders do |t|
      t.integer :order_id
      t.integer :food_item_id
      t.timestamps null: false
    end
  end
end
