class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :job_id
      t.string :job_name
      t.date :date_added

      t.timestamps
    end
  end
end
