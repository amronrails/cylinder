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

ActiveRecord::Schema.define(version: 20160222170651) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "username",        limit: 255, null: false
    t.string   "password_digest", limit: 255, null: false
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "adminstrator",    limit: 1
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "admin_users_brands", force: :cascade do |t|
    t.integer "admin_user_id", limit: 4
    t.integer "brand_id",      limit: 4
  end

  add_index "admin_users_brands", ["admin_user_id", "brand_id"], name: "index_admin_users_brands_on_admin_user_id_and_brand_id", using: :btree

  create_table "agents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "visible",    limit: 1
    t.integer  "views",      limit: 4
    t.string   "adress",     limit: 255
    t.text     "details",    limit: 65535
    t.string   "phone",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "brands", force: :cascade do |t|
    t.integer  "country_id",        limit: 4
    t.string   "name",              limit: 255,                   null: false
    t.integer  "position",          limit: 4
    t.boolean  "visible",           limit: 1,     default: false
    t.string   "permalink",         limit: 255,                   null: false
    t.integer  "counter",           limit: 4,     default: 0
    t.text     "description",       limit: 65535
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "icon_file_name",    limit: 255
    t.string   "icon_content_type", limit: 255
    t.integer  "icon_file_size",    limit: 4
    t.datetime "icon_updated_at"
  end

  add_index "brands", ["country_id"], name: "index_brands_on_country_id", using: :btree
  add_index "brands", ["permalink"], name: "index_brands_on_permalink", using: :btree

  create_table "car_images", force: :cascade do |t|
    t.integer  "model_id",            limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  create_table "car_prices", force: :cascade do |t|
    t.integer  "agent_id",   limit: 4
    t.integer  "car_id",     limit: 4
    t.integer  "price",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "car_prices", ["agent_id", "car_id"], name: "index_car_prices_on_agent_id_and_car_id", using: :btree

  create_table "car_specs", force: :cascade do |t|
    t.integer  "car_id",     limit: 4
    t.integer  "spec_id",    limit: 4
    t.string   "value",      limit: 255
    t.string   "value_ar",   limit: 255
    t.text     "hary",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "car_specs", ["car_id", "spec_id"], name: "index_car_specs_on_car_id_and_spec_id", using: :btree

  create_table "cars", force: :cascade do |t|
    t.integer  "model_id",           limit: 4
    t.string   "name",               limit: 255,               null: false
    t.boolean  "visible",            limit: 1
    t.string   "permalink",          limit: 255,               null: false
    t.integer  "counter",            limit: 4,     default: 0
    t.text     "description",        limit: 65535
    t.integer  "position",           limit: 4
    t.integer  "year",               limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "motorCapacity",      limit: 255
    t.string   "horsePower",         limit: 255
    t.string   "takseet",            limit: 255
    t.float    "review_total",       limit: 24
    t.integer  "int_review_total",   limit: 4
    t.integer  "int_review1",        limit: 4
    t.integer  "int_review2",        limit: 4
    t.integer  "int_review3",        limit: 4
    t.integer  "int_review4",        limit: 4
    t.integer  "int_review5",        limit: 4
    t.float    "float_review1",      limit: 24
    t.float    "float_review2",      limit: 24
    t.float    "float_review3",      limit: 24
    t.float    "float_review4",      limit: 24
    t.float    "float_review5",      limit: 24
    t.string   "price",              limit: 255
    t.string   "price2",             limit: 255
    t.string   "additional",         limit: 255
    t.string   "additional2",        limit: 255
    t.string   "additional3",        limit: 255
    t.string   "additional4",        limit: 255
    t.string   "additional5",        limit: 255
    t.string   "additional6",        limit: 255
    t.string   "additional7",        limit: 255
    t.string   "additional8",        limit: 255
  end

  add_index "cars", ["model_id"], name: "index_cars_on_model_id", using: :btree
  add_index "cars", ["permalink"], name: "index_cars_on_permalink", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "position",     limit: 4
    t.boolean  "visible",      limit: 1
    t.string   "permalink",    limit: 255, null: false
    t.integer  "brandsNumber", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "countries", ["name"], name: "index_countries_on_name", using: :btree
  add_index "countries", ["permalink"], name: "index_countries_on_permalink", using: :btree

  create_table "models", force: :cascade do |t|
    t.integer  "brand_id",            limit: 4
    t.string   "name",                limit: 255,                   null: false
    t.integer  "position",            limit: 4
    t.boolean  "visible",             limit: 1,     default: false
    t.string   "permalink",           limit: 255,                   null: false
    t.integer  "counter",             limit: 4,     default: 0
    t.text     "description",         limit: 65535
    t.integer  "year",                limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "models", ["brand_id"], name: "index_models_on_brand_id", using: :btree
  add_index "models", ["permalink"], name: "index_models_on_permalink", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "car_id",         limit: 4
    t.string   "name",           limit: 255
    t.string   "email",          limit: 255
    t.float    "rating",         limit: 24
    t.integer  "resale_rating",  limit: 4
    t.integer  "tawkeel_rating", limit: 4
    t.integer  "p4v_rating",     limit: 4
    t.integer  "luxury_rating",  limit: 4
    t.integer  "safety_rating",  limit: 4
    t.text     "comment",        limit: 65535
    t.integer  "votes",          limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "specs", force: :cascade do |t|
    t.integer  "position",   limit: 4
    t.string   "key",        limit: 255
    t.boolean  "visible",    limit: 1
    t.boolean  "table1",     limit: 1
    t.string   "name",       limit: 255
    t.string   "name_ar",    limit: 255
    t.text     "info",       limit: 65535
    t.string   "value",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "specs", ["key"], name: "index_specs_on_key", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255, null: false
    t.string   "password_digest", limit: 255, null: false
    t.string   "email",           limit: 255, null: false
    t.string   "name",            limit: 255
    t.integer  "age",             limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "users", ["username", "email"], name: "index_users_on_username_and_email", using: :btree

end
