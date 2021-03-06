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

ActiveRecord::Schema.define(version: 2020_10_07_082028) do

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

  create_table "user_buys", force: :cascade do |t|
    t.bigint "user_id"
    t.string "buyings_type"
    t.bigint "buyings_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyings_type", "buyings_id"], name: "index_user_buys_on_buyings_type_and_buyings_id"
    t.index ["user_id"], name: "index_user_buys_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.bigint "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
