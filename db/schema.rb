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

ActiveRecord::Schema.define(version: 20130717215617) do

  create_table "census_records", force: true do |t|
    t.integer  "parish_id"
    t.string   "street"
    t.string   "house_number"
    t.string   "surname"
    t.string   "forename"
    t.integer  "age"
    t.string   "occupation"
    t.string   "industry"
    t.string   "place_of_birth"
    t.string   "position_in_household"
    t.integer  "relationship_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "children", force: true do |t|
    t.string   "surname"
    t.string   "forename"
    t.integer  "age"
    t.string   "gender"
    t.boolean  "in_school"
    t.boolean  "in_work"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "surname"
    t.string   "forename"
    t.integer  "age"
    t.string   "house_number"
    t.string   "street"
    t.string   "occupation"
    t.string   "industry"
    t.string   "place_of_birth"
    t.string   "position_in_household"
    t.integer  "relationship_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationship_statuses", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
