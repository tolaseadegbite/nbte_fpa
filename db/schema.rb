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

ActiveRecord::Schema[7.0].define(version: 2022_12_04_120806) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.bigint "school_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_departments_on_school_id"
  end

  create_table "laboratories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.string "name"
  end

  create_table "laboratory_equipments", force: :cascade do |t|
    t.integer "laboratory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nbte_requirement"
    t.integer "number_required"
    t.string "model"
    t.integer "quantity_available"
    t.integer "available_gap"
    t.bigint "cost"
    t.string "specification"
    t.string "equipment_type"
  end

  create_table "office_facilities", force: :cascade do |t|
    t.string "name"
    t.text "specification"
    t.bigint "office_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_office_facilities_on_office_id"
  end

  create_table "offices", force: :cascade do |t|
    t.bigint "school_id", null: false
    t.string "name"
    t.string "occupant"
    t.integer "no_of_occupant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_offices_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_schools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workshop_equipments", force: :cascade do |t|
    t.integer "workshop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nbte_requirement"
    t.integer "number_required"
    t.string "model"
    t.integer "quantity_available"
    t.integer "available_gap"
    t.bigint "cost"
    t.string "specification"
    t.string "equipment_type"
  end

  create_table "workshops", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.string "name"
  end

  add_foreign_key "departments", "schools"
  add_foreign_key "office_facilities", "offices"
  add_foreign_key "offices", "schools"
  add_foreign_key "schools", "users"
end
