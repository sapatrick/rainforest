class AddFieldsToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string
    add_column :employees, :department_name, :string
    add_column :employees, :department_id, :integer
  end
end
