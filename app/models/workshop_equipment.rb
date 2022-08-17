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
class WorkshopEquipment < ApplicationRecord
    validates :name, :specification, :workshop_id, presence: true

    belongs_to :laboratory
end
