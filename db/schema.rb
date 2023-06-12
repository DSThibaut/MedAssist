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

ActiveRecord::Schema[7.0].define(version: 2023_06_12_125820) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.bigint "user_id", null: false
    t.bigint "medical_center_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medical_center_id"], name: "index_appointments_on_medical_center_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "medical_care_medicaments", force: :cascade do |t|
    t.integer "frequence"
    t.bigint "medical_care_id", null: false
    t.bigint "medicament_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "dose"
    t.boolean "morning", default: false
    t.boolean "noon", default: false
    t.boolean "evening", default: false
    t.index ["medical_care_id"], name: "index_medical_care_medicaments_on_medical_care_id"
    t.index ["medicament_id"], name: "index_medical_care_medicaments_on_medicament_id"
  end

  create_table "medical_cares", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "pathology"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.date "end_date"
    t.index ["user_id"], name: "index_medical_cares_on_user_id"
  end

  create_table "medical_centers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicaments", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stock"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "medical_centers"
  add_foreign_key "appointments", "users"
  add_foreign_key "medical_care_medicaments", "medical_cares"
  add_foreign_key "medical_care_medicaments", "medicaments"
  add_foreign_key "medical_cares", "users"
end
