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

ActiveRecord::Schema.define(version: 20140118234418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "bank_number"
    t.string   "bank_name"
    t.string   "agency"
    t.string   "account_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "manager"
    t.string   "phone"
    t.text     "description"
    t.string   "other_phone"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_debit"
    t.integer  "father_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cost_centers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forecasts", force: true do |t|
    t.integer  "category_id"
    t.integer  "year"
    t.integer  "month"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.string   "name"
    t.integer  "stakeholder_id"
    t.text     "description"
    t.integer  "category_id"
    t.date     "payday"
    t.date     "forecast_date"
    t.boolean  "status"
    t.integer  "cost_center_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stakeholders", force: true do |t|
    t.string   "name"
    t.boolean  "is_client"
    t.boolean  "is_supplier"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status",      default: true
  end

end
