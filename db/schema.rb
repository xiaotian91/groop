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
ActiveRecord::Schema.define(version: 20140331221513) do
=======
ActiveRecord::Schema.define(version: 20140331215534) do
>>>>>>> c2e0db888448f32081483ee8f759baa05d1fcdc1

  create_table "courses", force: true do |t|
    t.string   "courseNum"
    t.string   "courseName"
    t.string   "instructorName"
    t.text     "courseDesc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.integer  "one"
    t.integer  "two"
<<<<<<< HEAD
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> c2e0db888448f32081483ee8f759baa05d1fcdc1
    t.integer  "three"
    t.integer  "four"
    t.integer  "five"
    t.integer  "six"
    t.integer  "seven"
    t.integer  "eight"
    t.integer  "nine"
    t.integer  "ten"
<<<<<<< HEAD
    t.datetime "created_at"
    t.datetime "updated_at"
=======
>>>>>>> c2e0db888448f32081483ee8f759baa05d1fcdc1
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
  end

end
