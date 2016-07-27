class Order < ActiveRecord::Base
  belongs_to :location
  has_many :food_item_orders
  has_many :food_items, through: :food_item_orders
  

end
