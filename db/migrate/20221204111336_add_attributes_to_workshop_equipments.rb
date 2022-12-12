class AddAttributesToWorkshopEquipments < ActiveRecord::Migration[7.0]
  def change
    add_column :workshop_equipments, :nbte_requirement, :string
    add_column :workshop_equipments, :number_required, :integer
    add_column :workshop_equipments, :type, :string
    add_column :workshop_equipments, :model, :string
    add_column :workshop_equipments, :quantity_available, :integer
    add_column :workshop_equipments, :available_gap, :integer
    add_column :workshop_equipments, :cost, :bigint
  end
end
