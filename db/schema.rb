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

ActiveRecord::Schema.define(version: 2020_10_07_063656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commercial_units", force: :cascade do |t|
    t.string "owner", default: ""
    t.string "address", default: ""
    t.bigint "shops", default: 0
    t.bigint "sqmt", default: 0
    t.bigint "parking", default: 0
    t.decimal "price", default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "complex_buildings", force: :cascade do |t|
    t.string "owner", default: ""
    t.string "address", default: ""
    t.bigint "units", default: 0
    t.bigint "sqmt", default: 0
    t.decimal "price", default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "owner", default: ""
    t.string "address", default: ""
    t.bigint "rooms", default: 0
    t.bigint "sqmt", default: 0
    t.bigint "floors", default: 0
    t.boolean "air_cond", default: false
    t.decimal "price", default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
