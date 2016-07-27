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

require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
