# == Schema Information
#
# Table name: locations
#
#  id            :integer          not null, primary key
#  location      :string
#  opening_date  :date
#  city          :string
#  state         :string
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Location < ActiveRecord::Base
  belongs_to :restaurant
  has_many :location_food_items
  has_many :food_items, through: :location_food_items
  has_many :ingredients, through: :location_food_items
  has_many :employees
  has_many :orders


end
