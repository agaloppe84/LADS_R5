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

ActiveRecord::Schema.define(version: 20170404102239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_albums_on_type_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_brands_on_product_id", using: :btree
  end

  create_table "infos", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "icon"
    t.index ["product_id"], name: "index_infos_on_product_id", using: :btree
  end

  create_table "powers", force: :cascade do |t|
    t.boolean  "wind"
    t.boolean  "cold"
    t.boolean  "hot"
    t.boolean  "humidity"
    t.boolean  "energysaver"
    t.boolean  "taxsaver"
    t.boolean  "insects"
    t.boolean  "security"
    t.boolean  "sun"
    t.boolean  "rain"
    t.boolean  "inside"
    t.boolean  "outside"
    t.boolean  "certification"
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["product_id"], name: "index_powers_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "type_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["type_id"], name: "index_products_on_type_id", using: :btree
  end

  create_table "promos", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.date     "start"
    t.date     "end"
    t.boolean  "current"
    t.integer  "type_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["type_id"], name: "index_promos_on_type_id", using: :btree
  end

  create_table "quotations", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "firstname"
    t.string   "city"
    t.string   "phone"
    t.string   "zipcode"
    t.string   "blindttype"
    t.text     "message"
    t.string   "address"
    t.boolean  "treated",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "albums", "types"
  add_foreign_key "brands", "products"
  add_foreign_key "infos", "products"
  add_foreign_key "powers", "products"
  add_foreign_key "products", "types"
  add_foreign_key "promos", "types"
end
