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

class EmployeeRole < ActiveRecord::Base
  belongs_to :employee
  belongs_to :role
end
