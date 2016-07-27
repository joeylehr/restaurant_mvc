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

require 'test_helper'

class FoodItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
