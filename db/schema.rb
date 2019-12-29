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

ActiveRecord::Schema.define(version: 2019_12_29_010649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hero_seekers", force: :cascade do |t|
    t.integer "hero_id"
    t.integer "seeker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "heros", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "hero_handle"
    t.text "address"
    t.string "city"
    t.integer "zip"
    t.text "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seekers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "seeker_signal"
    t.text "address"
    t.string "city"
    t.integer "zip"
    t.text "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
