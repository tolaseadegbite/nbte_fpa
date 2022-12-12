class AddDepartmentIdToLaboratories < ActiveRecord::Migration[7.0]
  def change
    add_column :laboratories, :department_id, :integer
  end
end
