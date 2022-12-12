class AddEquipmentTypeToLaboratoryEquipments < ActiveRecord::Migration[7.0]
  def change
    add_column :laboratory_equipments, :equipment_type, :string
  end
end
