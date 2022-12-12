# == Schema Information
#
# Table name: laboratory_equipments
#
#  id                 :bigint           not null, primary key
#  available_gap      :integer
#  cost               :bigint
#  equipment_type     :string
#  model              :string
#  nbte_requirement   :string
#  number_required    :integer
#  quantity_available :integer
#  specification      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  laboratory_id      :integer
#
require "test_helper"

class LaboratoryEquipmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
