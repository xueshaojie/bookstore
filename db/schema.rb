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

ActiveRecord::Schema.define(version: 20170405020819) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "address_type"
    t.string   "contact_name"
    t.string   "cellphone"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id", "address_type"], name: "index_addresses_on_user_id_and_address_type"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "weight",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["name"], name: "index_categories_on_name"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "address_id"
    t.string   "order_no"
    t.integer  "amount"
    t.decimal  "total_money", precision: 10, scale: 2
    t.datetime "payment_at"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["order_no"], name: "index_orders_on_order_no", unique: true
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "weight",             default: 0
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["product_id", "weight"], name: "index_photos_on_product_id_and_weight"
    t.index ["product_id"], name: "index_photos_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "title"
    t.integer  "amount",                               default: 0
    t.decimal  "price",       precision: 10, scale: 2
    t.string   "uuid"
    t.text     "description"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["title"], name: "index_products_on_title"
    t.index ["uuid"], name: "index_products_on_uuid", unique: true
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "user_uuid"
    t.integer  "product_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
    t.index ["user_uuid"], name: "index_shopping_carts_on_user_uuid"
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
    t.string   "uuid"
    t.integer  "default_address_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uuid"], name: "index_users_on_uuid", unique: true
  end

end
