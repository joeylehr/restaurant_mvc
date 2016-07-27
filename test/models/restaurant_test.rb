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

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
