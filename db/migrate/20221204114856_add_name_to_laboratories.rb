class AddNameToLaboratories < ActiveRecord::Migration[7.0]
  def change
    add_column :laboratories, :name, :string
  end
end
