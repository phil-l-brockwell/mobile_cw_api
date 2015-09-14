# This file defines the schema for the database via ActiveRecord ORM
ActiveRecord::Schema.define(version: 20150702165442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Defines the data fields for the admin model
  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  # Defines data fields for the consultant model
  create_table "consultants", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "profile"
    t.string   "img"
    t.string   "mainimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  # Defines data fields for the item model
  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.decimal  "price",       precision: 8, scale: 2
  end

  # Defines data fields for the review model
  create_table "reviews", force: :cascade do |t|
    t.string   "author"
    t.string   "text"
    t.integer  "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "date"
  end

end
