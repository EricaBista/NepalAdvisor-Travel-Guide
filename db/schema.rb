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

ActiveRecord::Schema.define(version: 20150325084957) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "advertisements", force: true do |t|
    t.text     "text"
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.date     "started_date"
    t.date     "ended_date"
    t.integer  "clicked"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link"
    t.integer  "max_clicked"
  end

  create_table "categories", force: true do |t|
    t.string   "Name"
    t.text     "Description"
    t.integer  "Order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon"
    t.string   "slug"
    t.boolean  "is_menu"
    t.boolean  "is_destination"
    t.string   "banner"
    t.string   "heading"
    t.string   "bannername"
  end

  create_table "contacts", force: true do |t|
    t.string   "Slug"
    t.string   "Title"
    t.text     "Content",    limit: 255
    t.integer  "Order"
    t.boolean  "Home_page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptions", force: true do |t|
    t.string   "Title"
    t.text     "Content"
    t.integer  "Order"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", force: true do |t|
    t.string   "Name"
    t.string   "Title"
    t.string   "Content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "Title"
    t.text     "Content"
    t.integer  "Order"
    t.string   "image"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "Name"
    t.text     "Description"
    t.integer  "Order"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_tag"
    t.string   "slug"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["item_id"], name: "index_likes_on_item_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "redactor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type"

  create_table "restaurants", force: true do |t|
    t.string   "Name"
    t.string   "Title"
    t.string   "Content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved",    default: false
  end

  add_index "reviews", ["item_id"], name: "index_reviews_on_item_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "things_to_dos", force: true do |t|
    t.string   "Name"
    t.string   "Title"
    t.string   "Content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "token"
    t.string   "password_reset_token"
    t.datetime "password_reset_at"
    t.string   "picture"
    t.string   "full_name"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.string   "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "string"
    t.string   "last_sign_in_ip"
    t.string   "role"
    t.string   "confirmed_at"
    t.string   "confirmation_token"
    t.string   "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end
end
