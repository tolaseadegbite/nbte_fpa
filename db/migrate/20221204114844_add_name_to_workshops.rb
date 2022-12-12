class AddNameToWorkshops < ActiveRecord::Migration[7.0]
  def change
    add_column :workshops, :name, :string
  end
end
