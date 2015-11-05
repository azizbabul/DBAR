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

ActiveRecord::Schema.define(version: 20151104131643) do

  create_table "books", force: :cascade do |t|
    t.integer  "sr_no",      limit: 4
    t.string   "name",       limit: 255
    t.integer  "copy",       limit: 4
    t.string   "images",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "membership_id",            limit: 4
    t.string   "name",                     limit: 255
    t.string   "father_name",              limit: 255
    t.string   "husband",                  limit: 255
    t.string   "village",                  limit: 255
    t.string   "postOffice",               limit: 255
    t.string   "thana",                    limit: 255
    t.string   "district",                 limit: 255
    t.text     "present_address",          limit: 65535
    t.string   "phone",                    limit: 255
    t.string   "acknowledgement_name",     limit: 255
    t.string   "acknowledgement_relation", limit: 255
    t.string   "date_of_enrollment",       limit: 255
    t.integer  "roll",                     limit: 4
    t.string   "date_of_past_enrollment",  limit: 255
    t.string   "date_of_cancel",           limit: 255
    t.integer  "cancel_roll",              limit: 4
    t.integer  "status",                   limit: 4
    t.string   "date_of_membership",       limit: 255
    t.integer  "created_by_id",            limit: 4
    t.integer  "updated_by_id",            limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "sscs", force: :cascade do |t|
    t.integer  "membership_id", limit: 4
    t.string   "result",        limit: 255
    t.date     "year"
    t.string   "board",         limit: 255
    t.integer  "created_by_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
