# == Schema Information
#
# Table name: food_items
#
#  id                      :integer          not null, primary key
#  name                    :string
#  cost                    :integer
#  serving_size            :string
#  ingredients_description :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class FoodItem < ActiveRecord::Base
  has_many :location_food_items
  has_many :locations, through: :location_food_items
  has_many :food_item_ingredients
  has_many :ingredients, through: :food_item_ingredients
  has_many :food_item_orders
  has_many :orders, through: :food_item_orders
end
