# == Schema Information
#
# Table name: employee_roles
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  role_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class EmployeeRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
