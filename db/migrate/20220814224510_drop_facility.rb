class DropFacility < ActiveRecord::Migration[7.0]
  def change
    drop_table :facilities
  end
end
