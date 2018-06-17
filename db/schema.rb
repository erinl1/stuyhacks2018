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

ActiveRecord::Schema.define(version: 20180617031838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "metrocards", force: :cascade do |t|
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_metrocards_on_student_id"
  end

  create_table "rides", force: :cascade do |t|
    t.datetime "time"
    t.string "station"
    t.bigint "metrocard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["metrocard_id"], name: "index_rides_on_metrocard_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "start_time"
  end

  create_table "studentcards", force: :cascade do |t|
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_studentcards_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "student_id"
    t.string "address"
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "time_to_school"
    t.float "longitude"
    t.float "latitude"
    t.string "metro_uuid"
    t.text "lines", default: [], array: true
    t.string "student_uuid"
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  create_table "swipes", force: :cascade do |t|
    t.bigint "studentcard_id"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studentcard_id"], name: "index_swipes_on_studentcard_id"
  end

  add_foreign_key "metrocards", "students"
  add_foreign_key "rides", "metrocards"
  add_foreign_key "studentcards", "students"
  add_foreign_key "students", "schools"
  add_foreign_key "swipes", "studentcards"
end
