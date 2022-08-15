class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.references :school, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
