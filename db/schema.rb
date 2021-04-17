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

ActiveRecord::Schema.define(version: 2021_04_17_031101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.integer "min_nights"
    t.integer "max_nights"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.string "name"
    t.integer "host_since"
    t.string "location"
    t.integer "age"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  create_table "properties", force: :cascade do |t|
    t.string "property_type"
    t.string "rate"
    t.string "address"
    t.string "bedrooms"
    t.string "bathrooms"
    t.bigint "host_id", null: false
    t.bigint "availability_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["availability_id"], name: "index_properties_on_availability_id"
    t.index ["host_id"], name: "index_properties_on_host_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.string "title"
    t.string "name"
    t.string "comment"
    t.bigint "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_reviews_on_property_id"
  end

  add_foreign_key "properties", "availabilities"
  add_foreign_key "properties", "hosts"
  add_foreign_key "reviews", "properties"
end
