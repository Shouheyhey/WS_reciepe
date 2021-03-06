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

ActiveRecord::Schema.define(version: 20170416015829) do

  create_table "articles", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "article_id", limit: 4
    t.integer  "seminar_id", limit: 4
    t.text     "comment",    limit: 65535
    t.datetime "created_at"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "seminars", force: :cascade do |t|
    t.text     "title",              limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "concept",            limit: 65535
    t.text     "photo_all",          limit: 65535
    t.string   "participants",       limit: 255
    t.string   "num_ppl",            limit: 255
    t.string   "span",               limit: 255
    t.text     "intro_title",        limit: 65535
    t.text     "intro",              limit: 65535
    t.text     "body_title",         limit: 65535
    t.text     "facilitator",        limit: 65535
    t.text     "facilitator_image",  limit: 65535
    t.text     "body",               limit: 65535
    t.text     "ending_title",       limit: 65535
    t.text     "ending",             limit: 65535
    t.text     "background",         limit: 65535
    t.text     "tips",               limit: 65535
    t.integer  "user_id",            limit: 4
    t.text     "time_table",         limit: 65535
    t.integer  "seminar_id",         limit: 4
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.text     "avatar",                 limit: 65535
    t.string   "nickname",               limit: 255
    t.string   "affiliation",            limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
