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

class Employee < ActiveRecord::Base
  belongs_to :location
  has_many :employee_roles
  has_many :roles, through: :employee_roles
end
