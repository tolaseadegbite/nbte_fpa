# == Schema Information
#
# Table name: workshop_equipments
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
#  workshop_id        :integer
#
class WorkshopEquipment < ApplicationRecord
    validates :nbte_requirement, :equipment_type, :model, :specification, :quantity_available, :available_gap, :cost, :workshop_id, presence: true

    belongs_to :workshop
end