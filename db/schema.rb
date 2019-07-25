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

ActiveRecord::Schema.define(version: 2019_07_25_011551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "need_verify_age"
    t.boolean "verify_first_letter"
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.decimal "monthly_cost"
    t.bigint "animal_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_id"
    t.index ["animal_type_id"], name: "index_animals_on_animal_type_id"
    t.index ["person_id"], name: "index_animals_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "document"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "animal_types"
  add_foreign_key "animals", "people"
end
