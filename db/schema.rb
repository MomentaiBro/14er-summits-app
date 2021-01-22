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

ActiveRecord::Schema.define(version: 2021_01_12_235144) do

  create_table "climbers", force: :cascade do |t|
    t.string "name"
    t.string "hometown"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mountains", force: :cascade do |t|
    t.string "name"
    t.string "elevation"
    t.integer "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "summits", force: :cascade do |t|
    t.integer "climber_id", null: false
    t.integer "mountain_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["climber_id"], name: "index_summits_on_climber_id"
    t.index ["mountain_id"], name: "index_summits_on_mountain_id"
  end

  add_foreign_key "summits", "climbers"
  add_foreign_key "summits", "mountains"
end
