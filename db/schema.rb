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

ActiveRecord::Schema.define(version: 20180425131514) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "containerr"
    t.string "contributors"
    t.string "version"
    t.string "number"
    t.string "publisher"
    t.date "year"
    t.string "location"
    t.integer "reference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "iactivities", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.text "ta1"
    t.text "ta2"
    t.text "ta3"
    t.text "ta4"
    t.string "ta5"
    t.string "ta6"
    t.string "status"
    t.integer "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_iactivities_on_report_id"
  end

  create_table "presentations", force: :cascade do |t|
    t.string "title"
    t.string "conference"
    t.string "organization"
    t.date "date"
    t.string "venue"
    t.string "city"
    t.string "presentation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "references", force: :cascade do |t|
    t.date "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rfactivities", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.text "ta1"
    t.text "ta2"
    t.string "status"
    t.integer "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_rfactivities_on_report_id"
  end

  create_table "rsactivities", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.text "ta1"
    t.text "ta2"
    t.text "ta3"
    t.text "ta4"
    t.string "status"
    t.integer "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_rsactivities_on_report_id"
  end

  create_table "sactivities", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.text "ta1"
    t.text "ta2"
    t.text "ta3"
    t.text "ta4"
    t.text "ta5"
    t.string "status"
    t.integer "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_sactivities_on_report_id"
  end

  create_table "tactivities", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.text "ta1"
    t.text "ta2"
    t.text "ta3"
    t.text "ta4"
    t.string "status"
    t.integer "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_tactivities_on_report_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
