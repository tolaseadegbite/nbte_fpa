# == Schema Information
#
# Table name: workshop_equipments
#
#  id            :bigint           not null, primary key
#  name          :string
#  specification :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  workshop_id   :integer
#
require "test_helper"

class WorkshopEquipmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
