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

ActiveRecord::Schema.define(:version => 20130520202943) do

  create_table "closing_days", :force => true do |t|
    t.integer  "time_table_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "conferences", :force => true do |t|
    t.datetime "date"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contact_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "icon"
  end

  create_table "contacts", :force => true do |t|
    t.string   "value"
    t.integer  "restaurant_id"
    t.integer  "contact_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "note"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "code"
    t.string   "code3"
    t.string   "number"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reservations", :force => true do |t|
    t.integer  "restaurant_id"
    t.datetime "date"
    t.string   "code"
    t.integer  "conference_id"
    t.string   "confirmation"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
    t.integer  "status_id"
    t.datetime "confirmation_date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "duration"
    t.integer  "slot"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "time_slots", :force => true do |t|
    t.integer  "time_table_id"
    t.string   "name"
    t.integer  "position"
    t.integer  "UTC_position"
    t.time     "from"
    t.time     "to"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "time_tables", :force => true do |t|
    t.string   "description"
    t.boolean  "dst"
    t.integer  "restaurant_id"
    t.string   "time_zone"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "locale"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "week_closings", :force => true do |t|
    t.integer  "time_table_id"
    t.integer  "weekday"
    t.string   "type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
