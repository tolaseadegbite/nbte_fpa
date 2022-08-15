class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.references :school, null: false, foreign_key: true
      t.string :name
      t.string :occupant
      t.integer :no_of_occupant

      t.timestamps
    end
  end
end
