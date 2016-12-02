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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161130115803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_lists", force: :cascade do |t|
    t.string   "title"
    t.string   "directed_by"
    t.date     "release"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
=======
ActiveRecord::Schema.define(version: 20161126054218) do

  create_table "logins", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.string   "gender"
    t.string   "country"
    t.boolean  "accept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "password"
>>>>>>> aef38b28c5d386259bf136ac8949c995672668d1
  end

end
