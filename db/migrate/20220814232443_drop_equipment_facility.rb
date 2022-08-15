class DropEquipmentFacility < ActiveRecord::Migration[7.0]
  def change
    drop_table :equipment_facilities
  end
end
