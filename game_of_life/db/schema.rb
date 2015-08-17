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

ActiveRecord::Schema.define(version: 20150817023338) do

  create_table "goals", force: :cascade do |t|
    t.string   "aspect_type"
    t.string   "goal_name"
    t.string   "goal_long_description"
    t.integer  "aspect_start_score"
    t.integer  "aspect_goal_score"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "screen_name"
    t.string   "password_digest"
    t.integer  "social_score"
    t.integer  "health_score"
    t.integer  "wealth_score"
    t.integer  "education_score"
    t.integer  "romantic_score"
    t.integer  "family_score"
    t.integer  "spirit_score"
    t.integer  "overall_score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
