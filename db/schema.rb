# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_01_06_192835) do
  create_table "check_ins", force: :cascade do |t|
    t.date "checked_in_on"
    t.datetime "created_at", null: false
    t.integer "metric_id", null: false
    t.text "notes"
    t.integer "reps"
    t.integer "sets"
    t.datetime "updated_at", null: false
    t.decimal "value"
    t.decimal "weight"
    t.index ["metric_id"], name: "index_check_ins_on_metric_id"
  end

  create_table "fitness_goals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "name"
    t.string "status"
    t.date "target_date"
    t.datetime "updated_at", null: false
  end

  create_table "metrics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "fitness_goal_id", null: false
    t.string "metric_type"
    t.string "name"
    t.integer "reps"
    t.integer "sets"
    t.decimal "target_value"
    t.string "unit"
    t.datetime "updated_at", null: false
    t.decimal "weight"
    t.index ["fitness_goal_id"], name: "index_metrics_on_fitness_goal_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "check_ins", "metrics"
  add_foreign_key "metrics", "fitness_goals"
end
