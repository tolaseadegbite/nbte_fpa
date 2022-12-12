class AddSpecificationToLaboratoryEquipments < ActiveRecord::Migration[7.0]
  def change
    add_column :laboratory_equipments, :specification, :string
  end
end
