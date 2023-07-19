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

ActiveRecord::Schema[7.0].define(version: 2023_07_19_011051) do
  create_table "admin_users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercise_ids", force: :cascade do |t|
    t.integer "exercises_id", null: false
    t.integer "workout_variants_id", null: false
    t.decimal "duration"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercises_id"], name: "index_exercise_ids_on_exercises_id"
    t.index ["workout_variants_id"], name: "index_exercise_ids_on_workout_variants_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.integer "repetitions"
    t.integer "sets"
    t.integer "user_id"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email_address"
    t.string "phone_number"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_variants", force: :cascade do |t|
    t.string "muscle_group_name"
    t.string "duration"
    t.string "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "muscle_group_name"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "exercise_ids", "exercises", column: "exercises_id"
  add_foreign_key "exercise_ids", "workout_variants", column: "workout_variants_id"
end
