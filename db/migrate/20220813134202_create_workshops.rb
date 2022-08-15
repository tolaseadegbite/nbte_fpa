class CreateWorkshops < ActiveRecord::Migration[7.0]
  def change
    create_table :workshops do |t|
      t.references :department, null: false, foreign_key: true
      t.string :name
      t.integer :unit
      t.integer :nbte_requirement
      t.integer :nbte_number
      t.integer :gap
      t.integer :cost

      t.timestamps
    end
  end
end
