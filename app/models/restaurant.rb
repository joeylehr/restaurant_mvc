# == Schema Information
#
# Table name: restaurants
#
#  id           :integer          not null, primary key
#  name         :string
#  motto        :string
#  founder      :string
#  date_founded :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Restaurant < ActiveRecord::Base
  has_many :locations
  has_many :food_items, through: :locations  
  has_many :employees, through: :locations
  has_many :orders, through: :locations
end
