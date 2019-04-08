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

ActiveRecord::Schema.define(version: 2019_04_01_004850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cchlogs", force: :cascade do |t|
    t.string "name"
    t.date "dateofbirth"
    t.string "idnum"
    t.string "operator"
    t.string "reason"
    t.string "officer"
    t.string "disposition"
    t.date "dispositiondate"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daysoffrequests", force: :cascade do |t|
    t.string "operatorname"
    t.date "firstdayoff"
    t.date "lastdayoff"
    t.date "returndate"
    t.integer "hoursrequested"
    t.text "comment"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "timerequested"
  end

  create_table "fleettickets", force: :cascade do |t|
    t.integer "unitnumber"
    t.string "reportingofficer"
    t.text "problem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gatecodes", force: :cascade do |t|
    t.string "location"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ithelptickets", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.text "problem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phonenumbers", force: :cascade do |t|
    t.string "name"
    t.string "home"
    t.string "office"
    t.string "cell"
    t.string "secondary_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "radionumbers", force: :cascade do |t|
    t.string "officer"
    t.integer "radionumber"
    t.string "extrainfo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rollcalls", force: :cascade do |t|
    t.integer "radionum"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexoffenders", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "offense"
    t.string "risklevel"
    t.string "officer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "dateofbirth"
  end

  create_table "test", id: false, force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "vacationpatrols", force: :cascade do |t|
    t.string "officer"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
