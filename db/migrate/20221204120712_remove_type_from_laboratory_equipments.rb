class RemoveTypeFromLaboratoryEquipments < ActiveRecord::Migration[7.0]
  def change
    remove_column :laboratory_equipments, :type, :string
  end
end
