class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :task_id
      t.integer :task_deptnum
      t.string :task_dept
	  t.references :job, index: true, foreign_key: true
      t.timestamps
    end
  end
end
