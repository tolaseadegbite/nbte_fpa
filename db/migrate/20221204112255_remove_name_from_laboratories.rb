class RemoveNameFromLaboratories < ActiveRecord::Migration[7.0]
  def change
    remove_column :laboratories, :name, :string
  end
end
