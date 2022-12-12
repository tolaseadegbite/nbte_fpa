class AddAttributesToLaboratoryEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :laboratory_equipments, :nbte_requirement, :string
    add_column :laboratory_equipments, :number_required, :integer
    add_column :laboratory_equipments, :type, :string
    add_column :laboratory_equipments, :model, :string
    add_column :laboratory_equipments, :quantity_available, :integer
    add_column :laboratory_equipments, :available_gap, :integer
    add_column :laboratory_equipments, :cost, :bigint
  end
end
