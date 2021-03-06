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

ActiveRecord::Schema.define(version: 20161120145052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "content_views", force: :cascade do |t|
    t.string   "content_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "device_id"
  end

  create_table "days", force: :cascade do |t|
    t.string   "device_id",                  null: false
    t.boolean  "tagged",     default: false
    t.json     "symptoms"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "recipient_name",         null: false
    t.string   "address_line_1",         null: false
    t.string   "address_line_2",         null: false
    t.string   "city",                   null: false
    t.string   "state_abbreviation",     null: false
    t.string   "zip_code",               null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "device_id"
    t.datetime "sent_at"
    t.datetime "follow_up_scheduled_at"
  end

  create_table "product_recommendation_responses", force: :cascade do |t|
    t.integer  "product_recommendation_id", null: false
    t.string   "question_text",             null: false
    t.string   "response_text",             null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "product_recommendations", force: :cascade do |t|
    t.string   "device_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "device_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
