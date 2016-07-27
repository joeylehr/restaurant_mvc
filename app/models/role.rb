# == Schema Information
#
# Table name: roles
#
#  id                      :integer          not null, primary key
#  title                   :string
#  starting_salary         :integer
#  next_possible_promotion :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Role < ActiveRecord::Base
  has_many :employee_roles
  has_many :employees, through: :employee_roles
end
