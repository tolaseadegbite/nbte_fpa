# == Schema Information
#
# Table name: laboratories
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :integer
#
require "test_helper"

class LaboratoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
