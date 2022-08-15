# == Schema Information
#
# Table name: laboratory_equipments
#
#  id            :bigint           not null, primary key
#  name          :string
#  specification :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  laboratory_id :integer
#
require "test_helper"

class LaboratoryEquipmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
