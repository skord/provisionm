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

ActiveRecord::Schema.define(:version => 20120614202526) do

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ip_interfaces", :force => true do |t|
    t.string   "address"
    t.string   "description"
    t.string   "snmp_primary", :default => "P"
    t.integer  "node_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "ip_interfaces_services", :id => false, :force => true do |t|
    t.integer "ip_interface_id"
    t.integer "service_id"
  end

  add_index "ip_interfaces_services", ["ip_interface_id", "service_id"], :name => "index_ip_interfaces_services_on_ip_interface_id_and_service_id"
  add_index "ip_interfaces_services", ["service_id", "ip_interface_id"], :name => "index_ip_interfaces_services_on_service_id_and_ip_interface_id"

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "node_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "node_categories_nodes", :id => false, :force => true do |t|
    t.integer "node_id"
    t.integer "node_category_id"
  end

  add_index "node_categories_nodes", ["node_category_id", "node_id"], :name => "index_node_categories_nodes_on_node_category_id_and_node_id"
  add_index "node_categories_nodes", ["node_id", "node_category_id"], :name => "index_node_categories_nodes_on_node_id_and_node_category_id"

  create_table "nodes", :force => true do |t|
    t.string   "name"
    t.string   "foreign_reference"
    t.integer  "manufacturer_id"
    t.integer  "building_id"
    t.integer  "product_id"
    t.integer  "support_contract_id"
    t.integer  "vendor_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "requisition_id"
  end

  add_index "nodes", ["building_id"], :name => "index_nodes_on_building_id"
  add_index "nodes", ["manufacturer_id"], :name => "index_nodes_on_manufacturer_id"
  add_index "nodes", ["product_id"], :name => "index_nodes_on_product_id"
  add_index "nodes", ["requisition_id"], :name => "index_nodes_on_requisition_id"
  add_index "nodes", ["support_contract_id"], :name => "index_nodes_on_support_contract_id"
  add_index "nodes", ["vendor_id"], :name => "index_nodes_on_vendor_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "model_number"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "products", ["manufacturer_id"], :name => "index_products_on_manufacturer_id"

  create_table "requisitions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "non_ip_interfaces",   :default => "false"
    t.string   "non_ip_snmp_primary", :default => "N"
    t.string   "slug"
  end

  add_index "requisitions", ["slug"], :name => "index_requisitions_on_slug"

  create_table "services", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "support_contracts", :force => true do |t|
    t.string   "name"
    t.date     "expires_at"
    t.integer  "vendor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "support_contracts", ["vendor_id"], :name => "index_support_contracts_on_vendor_id"

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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
