class FoodItemOrder < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :order
end
