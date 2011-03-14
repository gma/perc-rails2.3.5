# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110303221347) do

  create_table "composers", :force => true do |t|
    t.string   "composer_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instrument_translations", :force => true do |t|
    t.string   "instrument_name"
    t.string   "description"
    t.string   "french"
    t.string   "german"
    t.string   "spanish"
    t.string   "italian"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "no_percs", :force => true do |t|
    t.string   "composer_name"
    t.string   "work_name"
    t.integer  "work_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "no_percs", ["composer_name", "work_name"], :name => "no_percs_index"

  create_table "unicode_test", :id => false, :force => true do |t|
    t.string "unicode1", :limit => 25
    t.string "unicode2", :limit => 25
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "organisation_name"
    t.string   "web_address"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "town_or_city"
    t.string   "zip"
    t.string   "state_or_county"
    t.string   "country"
    t.string   "phone_no"
    t.string   "email"
    t.string   "password"
    t.datetime "join_date"
    t.string   "membership_type"
    t.string   "payment_type"
    t.string   "currency"
    t.boolean  "cancelled"
    t.boolean  "current_member"
    t.string   "language"
    t.string   "years_paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workdetails", :force => true do |t|
    t.integer  "work_id"
    t.integer  "movement_id"
    t.string   "movement_name"
    t.string   "timpani"
    t.string   "timpani_2"
    t.string   "timpani_3"
    t.string   "timpani_4"
    t.string   "timpani_5"
    t.string   "timpani_6"
    t.string   "timpani_7"
    t.string   "timpani_8"
    t.string   "timpani_9"
    t.string   "timpani_10"
    t.string   "percussion_1"
    t.string   "percussion_2"
    t.string   "percussion_3"
    t.string   "percussion_4"
    t.string   "percussion_5"
    t.string   "percussion_6"
    t.string   "percussion_7"
    t.string   "percussion_8"
    t.string   "percussion_9"
    t.string   "percussion_10"
    t.string   "percussion_11"
    t.string   "percussion_12"
    t.string   "percussion_13"
    t.string   "percussion_14"
    t.string   "percussion_15"
    t.string   "percussion_16"
    t.string   "percussion_17"
    t.string   "percussion_18"
    t.string   "percussion_19"
    t.string   "percussion_20"
    t.string   "cimbalom"
    t.boolean  "attachment_exists"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", :force => true do |t|
    t.integer  "composer_id"
    t.string   "work_name"
    t.integer  "work_order_id"
    t.string   "arr_orch"
    t.boolean  "showarrorch"
    t.string   "opus_no"
    t.string   "notes"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["composer_id", "work_order_id", "work_name"], :name => "works_index"

end
