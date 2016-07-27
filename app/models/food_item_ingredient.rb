# == Schema Information
#
# Table name: food_item_ingredients
#
#  id            :integer          not null, primary key
#  food_item_id  :integer
#  ingredient_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class FoodItemIngredient < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :ingredient
end
