class RemoveNameFromLaboratoryEquipments < ActiveRecord::Migration[7.0]
  def change
    remove_column :laboratory_equipments, :name, :string
  end
end
