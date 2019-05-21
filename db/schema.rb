# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_21_183544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "make"
    t.string "model"
    t.string "year"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.bigint "shop_visit_id", null: false
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_visit_id"], name: "index_documents_on_shop_visit_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.bigint "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_parts_on_car_id"
  end

  create_table "services", force: :cascade do |t|
    t.float "cost"
    t.string "description"
    t.text "notes"
    t.bigint "part_id", null: false
    t.bigint "shop_visit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["part_id"], name: "index_services_on_part_id"
    t.index ["shop_visit_id"], name: "index_services_on_shop_visit_id"
  end

  create_table "shop_visits", force: :cascade do |t|
    t.date "date"
    t.date "starts_on"
    t.date "ends_on"
    t.integer "miles"
    t.bigint "car_id", null: false
    t.bigint "shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_shop_visits_on_car_id"
    t.index ["shop_id"], name: "index_shop_visits_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cars", "users"
  add_foreign_key "documents", "shop_visits"
  add_foreign_key "parts", "cars"
  add_foreign_key "services", "parts"
  add_foreign_key "services", "shop_visits"
  add_foreign_key "shop_visits", "cars"
  add_foreign_key "shop_visits", "shops"
end
