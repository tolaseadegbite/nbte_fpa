class CreateOfficeFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :office_facilities do |t|
      t.string :name
      t.text :specification
      t.references :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
