class RemoveSpecificationFromLaboratoryEquipments < ActiveRecord::Migration[7.0]
  def change
    remove_column :laboratory_equipments, :specification, :text
  end
end
