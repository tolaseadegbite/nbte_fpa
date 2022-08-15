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
class LaboratoryEquipment < ApplicationRecord
    validates :name, :specification, :laboratory_id, presence: true

    belongs_to :laboratory
end
