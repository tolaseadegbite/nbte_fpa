class RemoveNameFromWorkshops < ActiveRecord::Migration[7.0]
  def change
    remove_column :workshops, :name, :string
  end
end
