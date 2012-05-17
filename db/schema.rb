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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120516100346) do

  create_table "aftermaths", :force => true do |t|
    t.text     "aftermath"
    t.integer  "danger_request_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "ancestry"
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"

  create_table "categories_criterions", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "criterion_id"
  end

  add_index "categories_criterions", ["category_id"], :name => "index_categories_criterions_on_categories_id"
  add_index "categories_criterions", ["criterion_id"], :name => "index_categories_criterions_on_criterion_id"

  create_table "criterions", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "answer"
  end

  create_table "criterions_requests", :force => true do |t|
    t.integer  "criterion_id"
    t.integer  "request_id"
    t.string   "value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "criterions_tasks", :id => false, :force => true do |t|
    t.integer "criterion_id"
    t.integer "task_id"
  end

  add_index "criterions_tasks", ["criterion_id"], :name => "index_criterions_tasks_on_criterion_id"
  add_index "criterions_tasks", ["task_id"], :name => "index_criterions_tasks_on_task_id"

  create_table "dangers", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dangers_requests", :force => true do |t|
    t.integer  "danger_id"
    t.integer  "request_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dangers_tasks", :id => false, :force => true do |t|
    t.integer "danger_id"
    t.integer "task_id"
  end

  add_index "dangers_tasks", ["danger_id"], :name => "index_dangers_tasks_on_danger_id"
  add_index "dangers_tasks", ["task_id"], :name => "index_dangers_tasks_on_task_id"

  create_table "levels", :force => true do |t|
    t.integer  "criterion_id"
    t.string   "level"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "requests", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "task_id"
    t.integer  "user_id"
    t.string   "method"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
