# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  calories   :integer
#  meat       :boolean
#  dairy      :boolean
#  poultry    :boolean
#  perishable :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  has_many :food_item_ingredients
  has_many :food_items, through: :food_item_ingredients
end
