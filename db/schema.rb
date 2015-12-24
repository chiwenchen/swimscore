# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151224040352) do

  create_table "assign_events", force: :cascade do |t|
    t.integer  "staff_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "age_range"
    t.string   "length"
    t.string   "style"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
  end

  create_table "staffs", force: :cascade do |t|
    t.string  "name"
    t.integer "team_id"
    t.string  "role"
    t.string  "gender"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "leader"
  end

  create_table "tracks", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "staff_id"
    t.integer  "number"
    t.time     "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
