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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120514134143) do

  create_table "applications", :force => true do |t|
    t.string   "teamName"
    t.string   "userName"
    t.string   "userEmail"
    t.string   "schoolName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "event_attendees", :force => true do |t|
    t.integer  "team_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "event_attendees", ["event_id"], :name => "index_event_attendees_on_event_id"
  add_index "event_attendees", ["team_id"], :name => "index_event_attendees_on_team_id"

  create_table "event_records", :force => true do |t|
    t.integer  "win"
    t.integer  "tie"
    t.integer  "loss"
    t.integer  "event_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "event_records", ["event_id"], :name => "index_event_records_on_event_id"
  add_index "event_records", ["team_id"], :name => "index_event_records_on_team_id"

  create_table "events", :force => true do |t|
    t.string   "region"
    t.string   "name"
    t.date     "date"
    t.integer  "spotsAvailable"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "region"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "numStudents"
    t.integer  "school_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "teams", ["school_id"], :name => "index_teams_on_school_id"

  create_table "users", :force => true do |t|
    t.string   "role"
    t.string   "email"
    t.string   "name"
    t.integer  "school_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "password"
  end

  add_index "users", ["school_id"], :name => "index_users_on_school_id"

end
