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

ActiveRecord::Schema.define(version: 20161011091138) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "introduce"
    t.text     "content"
    t.string   "pic1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "hashtag"
    t.string   "owner"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "cusid"
    t.string   "cusname"
    t.string   "email"
    t.string   "cellphone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "unit_price",   precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price",  precision: 12, scale: 3
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "orderlist_id"
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["orderlist_id"], name: "index_order_items_on_orderlist_id"
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id"

  create_table "orderlists", force: :cascade do |t|
    t.integer  "qty"
    t.string   "ordid"
    t.string   "proid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "orderstatuss"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "ordid"
    t.datetime "orddate"
    t.integer  "money"
    t.string   "address"
    t.string   "payment"
    t.string   "account5num"
    t.string   "cusid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "proid"
    t.string   "proname"
    t.integer  "price"
    t.integer  "qty"
    t.string   "pic1"
    t.text     "introduce"
    t.string   "supid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "supid"
    t.string   "supname"
    t.string   "address"
    t.string   "email"
    t.string   "tel"
    t.string   "cellphone"
    t.string   "pic1"
    t.text     "introduce"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "content"
    t.string   "bgimg"
  end

end
