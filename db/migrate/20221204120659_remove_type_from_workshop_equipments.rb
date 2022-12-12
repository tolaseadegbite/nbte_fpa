class RemoveTypeFromWorkshopEquipments < ActiveRecord::Migration[7.0]
  def change
    remove_column :workshop_equipments, :type, :string
  end
end
