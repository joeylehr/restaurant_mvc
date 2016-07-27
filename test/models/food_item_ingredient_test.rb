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

require 'test_helper'

class FoodItemIngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
