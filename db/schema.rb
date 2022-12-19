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

ActiveRecord::Schema[7.0].define(version: 2022_12_15_014000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "zipcode"
    t.string "street"
    t.string "complement"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "full_name"
    t.string "category"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id", null: false
    t.bigint "profile_id", null: false
    t.index ["address_id"], name: "index_contractors_on_address_id"
    t.index ["email"], name: "index_contractors_on_email", unique: true
    t.index ["profile_id"], name: "index_contractors_on_profile_id"
    t.index ["reset_password_token"], name: "index_contractors_on_reset_password_token", unique: true
  end

  create_table "musicians", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "artistic_name"
    t.string "artistic_bio"
    t.string "genre"
    t.string "category"
    t.string "phone_number"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id", null: false
    t.bigint "profile_id", null: false
    t.index ["address_id"], name: "index_musicians_on_address_id"
    t.index ["email"], name: "index_musicians_on_email", unique: true
    t.index ["profile_id"], name: "index_musicians_on_profile_id"
    t.index ["reset_password_token"], name: "index_musicians_on_reset_password_token", unique: true
  end

  create_table "offers", force: :cascade do |t|
    t.string "price"
    t.string "duration"
    t.boolean "equipment"
    t.date "event_date"
    t.string "event_hour"
    t.bigint "musician_id", null: false
    t.bigint "contractor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_offers_on_contractor_id"
    t.index ["musician_id"], name: "index_offers_on_musician_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contractors", "addresses"
  add_foreign_key "contractors", "profiles"
  add_foreign_key "musicians", "addresses"
  add_foreign_key "musicians", "profiles"
  add_foreign_key "offers", "contractors"
  add_foreign_key "offers", "musicians"
end
