# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190509004534) do

  create_table "employees", force: :cascade do |t|
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "department_name"
    t.integer "department_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "job_id"
    t.string "job_name"
    t.date "date_added"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "job_designation"
    t.text "job_description"
    t.boolean "job_complete"
    t.date "job_due_date"
    t.string "job_salesperson"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "task_deptnum"
    t.string "task_dept"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_tasks_on_job_id"
  end

end
