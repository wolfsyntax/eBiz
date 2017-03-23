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

ActiveRecord::Schema.define(version: 20170323112046) do

  create_table "announcements", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "Web_URL"
    t.string   "author"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carousels", force: :cascade do |t|
    t.string   "image_name"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.string   "product_code"
    t.decimal  "retailer_price"
    t.decimal  "original_price"
    t.string   "product_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "product_code"
    t.string   "phone_number"
    t.integer  "quantity"
    t.string   "other"
    t.integer :user_id
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_data", force: :cascade do |t|
    t.integer  "age"
    t.text     "address"
    t.string   "email_address"
    t.string   "contact_number"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "account_type"
  end

end
