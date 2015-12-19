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

ActiveRecord::Schema.define(version: 20151218172054) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "family"
    t.string   "sexuality"
    t.string   "email"
    t.string   "father_name"
    t.string   "inmate"
    t.integer  "s_s"
    t.integer  "s_m"
    t.string   "job"
    t.string   "phon"
    t.string   "tell"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "membership_customers", force: :cascade do |t|
    t.string   "customer_id"
    t.string   "date"
    t.float    "sum"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payoffs", force: :cascade do |t|
    t.float    "payment"
    t.integer  "usance_id"
    t.float    "forfeit"
    t.float    "sum"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "request_loan_id"
  end

  create_table "request_loans", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "date"
    t.integer  "loan_sum"
    t.boolean  "accepted"
    t.integer  "loan_percent"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tests", force: :cascade do |t|
    t.text     "test"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usance_payments", force: :cascade do |t|
    t.float    "peyment"
    t.string   "date"
    t.integer  "request_loan_id"
    t.integer  "customer_id"
    t.boolean  "payoff"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
