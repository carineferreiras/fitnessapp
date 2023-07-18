# # This file is auto-generated from the current state of the database. Instead
# # of editing this file, please use the migrations feature of Active Record to
# # incrementally modify your database, and then regenerate this schema definition.
# #
# # This file is the source Rails uses to define your schema when running `bin/rails
# # db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# # be faster and is potentially less error prone than running all of your
# # migrations from scratch. Old migrations may fail to apply correctly if those
# # migrations use external dependencies or application code.
# #
# # It's strongly recommended that you check this file into your version control system.

# ActiveRecord::Schema.define(version: 2023_07_08_084245) do

#   create_table "admin_users", force: :cascade do |t|
#     t.string "username"
#     t.string "password"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "firstname"
#     t.string "lastname"
#     t.string "email_address"
#     t.string "phone_number"
#     t.string "password_digest"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "exercises", force: :cascade do |t|
#     t.integer "user_id"
#     t.string "name"
#     t.integer "repetitions"
#     t.integer "sets"
#     t.integer "workout_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.integer "weight"
#   end

#   create_table "exercise_id", force: :cascade do |t|
#     t.decimal "duration"
#     t.integer "quantity", default: 6
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "workout_variants", force: :cascade do |t|
#     t.integer "workout_id"
#     t.string "duration"
#     t.string "muscle_group_name"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "workouts", force: :cascade do |t|
#     t.string "muscle_group_name"
#     t.string "duration"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   add_index "users", ["email_address"], name: "index_users_on_email_address", unique: true

# end
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

ActiveRecord::Schema[7.0].define(version: 2023_07_07_152324) do
  create_table "exercise_ids", force: :cascade do |t|
    t.integer "exercise_id", null: false
    t.integer "workout_variant_id", null: false
    t.decimal "duration"
    t.integer "quantity", default: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercise_ids_on_exercise_id"
    t.index ["workout_variant_id"], name: "index_exercise_ids_on_workout_variant_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "repetitions"
    t.integer "sets"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_exercises_on_user_id"
    t.index ["workout_id"], name: "index_exercises_on_workout_id"
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

  create_table "workouts", force: :cascade do |t|
    t.string "muscle_group_name"
    t.integer "user_id"
    t.integer "exercise_id"
    t.boolean "is_default"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_workouts_on_exercise_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "exercise_ids", "exercises"
  add_foreign_key "exercise_ids", "workout_variants"
  add_foreign_key "exercises", "users"
  add_foreign_key "exercises", "workouts"
  add_foreign_key "workouts", "exercises"
  add_foreign_key "workouts", "users"
end
