class CreateWorkshopEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :workshop_equipments do |t|
      t.string :name
      t.text :specification
      t.integer :workshop_id

      t.timestamps
    end
  end
end
