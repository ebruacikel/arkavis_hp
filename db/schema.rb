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

ActiveRecord::Schema.define(:version => 20121121050206) do

  create_table "admins", :force => true do |t|
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
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "games", :force => true do |t|
    t.string   "title"
    t.string   "slogan"
    t.text     "about"
    t.text     "features"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "genre"
    t.string   "screenshot_1_file_name"
    t.string   "screenshot_1_content_type"
    t.integer  "screenshot_1_file_size"
    t.datetime "screenshot_1_updated_at"
    t.string   "screenshot_2_file_name"
    t.string   "screenshot_2_content_type"
    t.integer  "screenshot_2_file_size"
    t.datetime "screenshot_2_updated_at"
    t.string   "screenshot_3_file_name"
    t.string   "screenshot_3_content_type"
    t.integer  "screenshot_3_file_size"
    t.datetime "screenshot_3_updated_at"
    t.string   "screenshot_4_file_name"
    t.string   "screenshot_4_content_type"
    t.integer  "screenshot_4_file_size"
    t.datetime "screenshot_4_updated_at"
    t.string   "screenshot_5_file_name"
    t.string   "screenshot_5_content_type"
    t.integer  "screenshot_5_file_size"
    t.datetime "screenshot_5_updated_at"
    t.string   "swf_file_file_name"
    t.string   "swf_file_content_type"
    t.integer  "swf_file_file_size"
    t.datetime "swf_file_updated_at"
    t.string   "unity3d_file_file_name"
    t.string   "unity3d_file_content_type"
    t.integer  "unity3d_file_file_size"
    t.datetime "unity3d_file_updated_at"
    t.string   "cover_screen_file_name"
    t.string   "cover_screen_content_type"
    t.integer  "cover_screen_file_size"
    t.datetime "cover_screen_updated_at"
    t.integer  "weight"
  end

  create_table "jobs", :force => true do |t|
    t.string   "position"
    t.text     "description"
    t.text     "benefits"
    t.text     "requirements"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "models", :force => true do |t|
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
  end

  add_index "models", ["email"], :name => "index_models_on_email", :unique => true
  add_index "models", ["reset_password_token"], :name => "index_models_on_reset_password_token", :unique => true

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "category_id"
    t.boolean  "featured",    :default => false
    t.integer  "weight"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
