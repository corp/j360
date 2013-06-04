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

ActiveRecord::Schema.define(:version => 20130604205910) do

  create_table "clients", :force => true do |t|
    t.string   "name",       :limit => 30
    t.string   "lastname",   :limit => 30
    t.string   "email",      :limit => 100
    t.integer  "age",                       :default => 18
    t.boolean  "is_active",                 :default => true
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "clients", ["name", "lastname", "age"], :name => "clients_by_fullname"

  create_table "invoices", :force => true do |t|
    t.float    "total"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "invoices", ["client_id"], :name => "index_invoices_on_client_id"

  create_table "invoices_products", :force => true do |t|
    t.integer "invoice_id"
    t.integer "product_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.string   "sku"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
