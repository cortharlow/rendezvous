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

ActiveRecord::Schema.define(version: 20151108214648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "destination_id"
    t.integer  "day_num"
    t.string   "name"
    t.string   "location"
    t.string   "cost"
    t.string   "photo_url"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "itinerary_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.integer  "itinerary_id"
    t.string   "city"
    t.string   "country"
    t.integer  "num_of_days"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: :cascade do |t|
    t.integer  "destination_id"
    t.string   "accommodation_name"
    t.string   "accommodation_address"
    t.string   "accommodation_checkin"
    t.string   "accommodation_checkout"
    t.string   "accommodation_cost"
    t.text     "accommodation_notes"
    t.string   "user_name"
    t.string   "transportation_type"
    t.string   "transportation_company_number"
    t.string   "transportation_departure_location"
    t.string   "transportation_departure_datetime"
    t.string   "transportation_arrival_location"
    t.string   "transportation_arrival_datetime"
    t.string   "transportation_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "photo_url"
    t.string   "start_date"
    t.string   "end_date"
    t.text     "description"
    t.boolean  "public",      default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "photo_url"
    t.string "city"
    t.string "password_digest"
  end

end
