class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :employee_id

      t.timestamps
    end
  end
end
