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

ActiveRecord::Schema.define(version: 20150719135915) do

  create_table "brands", force: :cascade do |t|
    t.string   "brand_code"
    t.string   "brand_name"
    t.string   "capital_letter"
    t.integer  "display_flg_id"
    t.integer  "display_order"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "large_category_code"
    t.string   "middle_category_code"
    t.string   "small_category_code"
    t.string   "large_category_name"
    t.string   "middle_category_name"
    t.string   "small_category_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "delivery_methods", force: :cascade do |t|
    t.string   "delivery_method_code"
    t.string   "delivery_method_name"
    t.integer  "shipping_charge_threshold_prices"
    t.integer  "indivisually_calculate_flg_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "group_items", force: :cascade do |t|
    t.string   "group_item_code"
    t.string   "item_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "item_code"
    t.string   "item_name"
    t.string   "large_category_code"
    t.string   "middle_category_code"
    t.string   "small_category_code"
    t.integer  "sale_flg_id"
    t.integer  "item_type_id"
    t.string   "delivery_method_code"
    t.integer  "stock_management_type_id"
    t.integer  "sale_price"
    t.integer  "sale_stock_quantity"
    t.integer  "oneshot_order_limit"
    t.datetime "sale_datetime_from"
    t.datetime "sale_datetime_to"
    t.integer  "reservation_price"
    t.integer  "reservation_stock_quantity"
    t.integer  "oneshot_reservation_limit"
    t.datetime "reservation_datetime_from"
    t.datetime "reservation_datetime_to"
    t.integer  "discount_price"
    t.datetime "discount_datetime_from"
    t.datetime "discount_datetime_to"
    t.string   "color_code"
    t.string   "size_code"
    t.string   "jan_code"
    t.string   "brand_code"
    t.string   "maker_code"
    t.integer  "picking_days"
    t.date     "release_date"
    t.string   "targeted_date_comment"
    t.string   "shipping_time_comment"
    t.integer  "bank_wire"
    t.integer  "cash_on_delivery"
    t.integer  "credit_card"
    t.integer  "convenience"
    t.integer  "average_review_score"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "makers", force: :cascade do |t|
    t.string   "maker_code"
    t.string   "maker_name"
    t.string   "capital_letter"
    t.integer  "display_flg_id"
    t.integer  "display_order"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
