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

ActiveRecord::Schema.define(version: 2019_07_24_105255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.text "position"
    t.string "permulink"
    t.string "visible"
    t.bigint "subjects_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subjects_id"], name: "index_pages_on_subjects_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "visible"
    t.text "content_type"
    t.text "content"
    t.bigint "pages_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pages_id"], name: "index_sections_on_pages_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.text "position"
    t.string "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
