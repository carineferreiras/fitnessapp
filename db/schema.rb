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

ActiveRecord::Schema[7.0].define(version: 2023_07_08_084245) do
  create_table "admin_users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email_address"
    t.string "phone_number"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.integer "users_id"
    t.string "name"
    t.integer "repetitions"
    t.integer "sets"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weight"
    t.integer "user_id"
  end

  create_table "exercise_id", force: :cascade do |t|
    t.integer "exercise_id"
    t.decimal "duration"
    t.integer "product_variant_id"
    t.integer "quantity", default: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_variant", force: :cascade do |t|
    t.integer "workout_id"
    t.string "duration"
    t.string "muscle_group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
 
  # create_table "users", force: :cascade do |t|
  #   t.string "email", default: "", null: false
  #   t.string "encrypted_password", default: "", null: false
  #   t.string "reset_password_token"
  #   t.datetime "reset_password_sent_at"
  #   t.datetime "remember_created_at"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["email"], name: "index_users_on_email", unique: true
  #   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  # end

  create_table "workouts", force: :cascade do |t|
    t.string "muscle_group_name"
    t.integer "user_id"
    t.integer "exercise_id"
    t.integer "workout_id"
    t.boolean "is_default"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
