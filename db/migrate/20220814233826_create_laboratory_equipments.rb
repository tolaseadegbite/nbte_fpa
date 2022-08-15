class CreateLaboratoryEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratory_equipments do |t|
      t.string :name
      t.text :specification
      t.integer :laboratory_id

      t.timestamps
    end
  end
end
