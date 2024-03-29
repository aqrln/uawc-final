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

ActiveRecord::Schema.define(version: 20141124035006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: true do |t|
    t.integer  "from_point_id"
    t.integer  "to_point_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "points", force: true do |t|
    t.float   "lat"
    t.float   "lon"
    t.integer "ttype"
  end

  create_table "queries", force: true do |t|
    t.integer  "point_id"
    t.integer  "in_card_id"
    t.integer  "out_card_id"
    t.datetime "checkin"
    t.datetime "checkout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
