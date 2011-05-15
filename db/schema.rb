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

ActiveRecord::Schema.define(:version => 20110515171353) do

  create_table "anvils", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bell_plates", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bells", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bongos", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bongos_congas", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boobams", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "burmese_gongs", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chinese_gongs", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "composers", :force => true do |t|
    t.string   "composer_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cowbells", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crotales", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "endorsements", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.string   "job_title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factory_whistles", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flower_pots", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "handbells", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
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

  create_table "japanese_temple_bells", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_drums", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marimbas", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metalophones", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
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

  create_table "rototoms", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.integer  "user_id"
    t.integer  "work_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sleighbells", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songbells", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steel_pans", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tamburis", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxi_horns", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temple_blocks", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thai_gongs", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tuned_gongs", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tuned_tom_toms", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tuned_woodblocks", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unicode_test", :id => false, :force => true do |t|
    t.string "unicode1", :limit => 25
    t.string "unicode2", :limit => 25
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
    t.string   "last_name"
    t.string   "organisation_name"
    t.string   "job_title"
    t.text     "address"
    t.string   "zip"
    t.string   "country"
    t.string   "membership_type"
    t.string   "currency"
    t.string   "language"
    t.boolean  "trial_member"
    t.string   "payment_type"
    t.boolean  "trial_used"
    t.string   "years_paid"
    t.boolean  "cancelled"
    t.boolean  "active_member",      :default => false
    t.string   "phone_number"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "work_requests", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.string   "job_title"
    t.string   "composer_name"
    t.string   "work_name"
    t.string   "date"
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

  create_table "xylorimbas", :force => true do |t|
    t.integer  "work_id"
    t.string   "movement_name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
