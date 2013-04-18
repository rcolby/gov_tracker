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

ActiveRecord::Schema.define(:version => 20130418195349) do

  create_table "legislators", :force => true do |t|
    t.string   "title"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "name_suffix"
    t.string   "nickname"
    t.string   "party"
    t.string   "state"
    t.string   "district"
    t.string   "in_office"
    t.string   "gender"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "webform"
    t.string   "congress_office"
    t.string   "bioguide_id"
    t.string   "votesmart_id"
    t.string   "fec_id"
    t.string   "govtrack_id"
    t.string   "crp_id"
    t.string   "twitter_id"
    t.string   "congresspedia_url"
    t.string   "youtube_url"
    t.string   "facebook_id"
    t.string   "official_rss"
    t.string   "senate_class"
    t.string   "birthdate"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "titles", :force => true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "name_suffix"
    t.string   "nickname"
    t.string   "party"
    t.string   "state"
    t.string   "district"
    t.string   "in_office"
    t.string   "gender"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "webform"
    t.string   "congress_office"
    t.string   "bioguide_id"
    t.string   "votesmart_id"
    t.string   "fec_id"
    t.string   "govtrack_id"
    t.string   "crp_id"
    t.string   "twitter_id"
    t.string   "congresspedia_url"
    t.string   "youtube_url"
    t.string   "facebook_id"
    t.string   "official_rss"
    t.string   "senate_class"
    t.string   "birthdate"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
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
    t.string   "f_name"
    t.string   "l_name"
    t.string   "zip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
