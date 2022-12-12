class RemoveNameFromWorkshopEquipments < ActiveRecord::Migration[7.0]
  def change
    remove_column :workshop_equipments, :name, :string
  end
end
