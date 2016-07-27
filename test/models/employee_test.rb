# == Schema Information
#
# Table name: employees
#
#  id               :integer          not null, primary key
#  name             :string
#  date_of_birth    :date
#  hometown         :string
#  start_date       :date
#  bonus            :integer
#  current_employee :boolean
#  location_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
