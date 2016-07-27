# == Schema Information
#
# Table name: location_food_items
#
#  id           :integer          not null, primary key
#  food_item_id :integer
#  location_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class LocationFoodItem < ActiveRecord::Base
  belongs_to :location
  belongs_to :food_item
end
