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

ActiveRecord::Schema.define(version: 20140415171805) do

  create_table "courses", force: true do |t|
    t.string   "courseNum"
    t.string   "courseName"
    t.string   "instructorName"
    t.text     "courseDesc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groop_registrations", force: true do |t|
    t.integer  "user_id"
    t.integer  "grooping_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groopings", force: true do |t|
    t.string   "groop_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", force: true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.integer  "groop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "is_accepted"
  end

  create_table "quizzes", force: true do |t|
    t.integer  "one"
    t.integer  "two"
    t.integer  "three"
    t.integer  "four"
    t.integer  "five"
    t.integer  "six"
    t.integer  "seven"
    t.integer  "eight"
    t.integer  "nine"
    t.integer  "ten"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "registrations", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "real_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
    t.string   "gender"
    t.string   "major"
    t.string   "bio"
    t.integer  "quiz_id"
  end

end
