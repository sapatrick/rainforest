class AddFieldsToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :job_designation, :string
    add_column :jobs, :job_description, :text
    add_column :jobs, :job_complete, :boolean
    add_column :jobs, :job_due_date, :date
    add_column :jobs, :job_salesperson, :string
  end
end
