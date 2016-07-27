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

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
