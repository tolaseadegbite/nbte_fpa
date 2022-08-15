class AddOfficeIdToFacilities < ActiveRecord::Migration[7.0]
  def change
    add_column :facilities, :office_id, :integer
  end
end
