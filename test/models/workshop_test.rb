# == Schema Information
#
# Table name: workshops
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :integer
#
require "test_helper"

class WorkshopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
