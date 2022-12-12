class RemoveSpecificationFromWorkshopEquipments < ActiveRecord::Migration[7.0]
  def change
    remove_column :workshop_equipments, :specification, :text
  end
end
