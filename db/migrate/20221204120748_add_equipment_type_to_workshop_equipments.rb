class AddEquipmentTypeToWorkshopEquipments < ActiveRecord::Migration[7.0]
  def change
    add_column :workshop_equipments, :equipment_type, :string
  end
end
