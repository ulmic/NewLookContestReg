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

ActiveRecord::Schema.define(version: 20150412204205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informat_participants", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nominations", force: true do |t|
    t.string   "title"
    t.string   "describe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "public_works", force: true do |t|
    t.string   "header"
    t.string   "header_coordinates"
    t.string   "title"
    t.string   "annotation"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "text"
    t.string   "video_link"
    t.integer  "nomination_id"
  end

  create_table "users", force: true do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.date     "birth_date"
    t.text     "school"
    t.text     "group"
    t.text     "job"
    t.text     "role"
    t.text     "city"
    t.text     "street"
    t.text     "house"
    t.text     "building"
    t.text     "flat"
    t.text     "mobile_phone"
    t.text     "home_phone"
    t.text     "email"
    t.string   "confirm_state"
    t.string   "password"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "filename"
    t.string   "image"
    t.string   "events"
    t.string   "honors"
    t.string   "media"
    t.text     "portfolio"
    t.text     "skype"
    t.text     "municipality"
    t.boolean  "accept_agreement"
    t.text     "patronymic"
    t.text     "position"
    t.text     "password_digest"
    t.text     "avatar"
    t.text     "creative_work"
    t.text     "url_creative_work"
    t.text     "experience"
    t.text     "type"
    t.text     "activity_line"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
