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

ActiveRecord::Schema.define(version: 2023_06_09_023703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.text "orderstatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders_products", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "product_code"
    t.text "product_name"
    t.text "product_category"
    t.text "product_description"
    t.text "image"
    t.decimal "cost_price", precision: 10, scale: 2
    t.decimal "retail_price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "animal_category"
    t.integer "quantity"
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.text "email"
    t.string "password_digest"
    t.text "address"
    t.boolean "admin"
    t.string "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
  end

end
