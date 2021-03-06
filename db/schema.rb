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

ActiveRecord::Schema.define(version: 20140406002831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "coding_langs", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "coding_langs", ["project_id"], name: "index_coding_langs_on_project_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["project_id"], name: "index_products_on_project_id", using: :btree

  create_table "project_issues", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "priority"
    t.string   "status"
    t.integer  "user_id"
  end

  add_index "project_issues", ["project_id"], name: "index_project_issues_on_project_id", using: :btree
  add_index "project_issues", ["user_id"], name: "index_project_issues_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "code_lang_id"
    t.text     "description"
    t.integer  "user_id"
  end

  add_index "projects", ["product_id"], name: "index_projects_on_product_id", using: :btree
  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   default: "user"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "full_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
