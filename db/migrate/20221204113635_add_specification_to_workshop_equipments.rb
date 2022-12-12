class AddSpecificationToWorkshopEquipments < ActiveRecord::Migration[7.0]
  def change
    add_column :workshop_equipments, :specification, :string
  end
end
