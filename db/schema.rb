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

ActiveRecord::Schema.define(version: 20180507234040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.boolean "adopted"
    t.boolean "foster"
    t.string "name"
    t.string "species"
    t.string "breed"
    t.string "sex"
    t.string "age"
    t.string "state"
    t.string "suburb"
    t.boolean "desexed"
    t.boolean "vaccinated"
    t.text "about_pet"
    t.text "health_concerns"
    t.bigint "user_id"
    t.string "adoption_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_data"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.text "image_data"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.string "suburb"
    t.string "state"
    t.string "postcode"
    t.string "rescue_name"
    t.string "rescue_email"
    t.text "about_rescue"
    t.text "adoption_details"
    t.string "website_url"
    t.text "image_data"
    t.boolean "looking_for_fosters"
    t.boolean "taking_surrenders"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rescue"
    t.decimal "longitude"
    t.decimal "latiitude"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.text "stripe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pets", "profiles", column: "user_id"
  add_foreign_key "photos", "profiles", column: "user_id"
  add_foreign_key "profiles", "users"
end
