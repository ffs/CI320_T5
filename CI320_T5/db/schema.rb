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

ActiveRecord::Schema.define(version: 20150602025925) do

  create_table "db_insts", force: true do |t|
    t.string   "db_inst_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "server_id"
  end

  add_index "db_insts", ["server_id"], name: "index_db_insts_on_server_id"

  create_table "dbs", force: true do |t|
    t.string   "db_name"
    t.string   "version"
    t.float    "growthRate"
    t.date     "clonedate"
    t.string   "cpu"
    t.string   "memory"
    t.string   "storage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "environments", force: true do |t|
    t.string   "environment_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "f_software_insts", force: true do |t|
    t.string   "f_software_inst_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "server_id"
  end

  add_index "f_software_insts", ["server_id"], name: "index_f_software_insts_on_server_id"

  create_table "f_softwares", force: true do |t|
    t.string   "f_software_name"
    t.string   "cpu"
    t.string   "memory"
    t.string   "storage"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "i_software_insts", force: true do |t|
    t.string   "i_software_inst_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "i_software_id"
    t.integer  "server_id"
  end

  add_index "i_software_insts", ["i_software_id"], name: "index_i_software_insts_on_i_software_id"
  add_index "i_software_insts", ["server_id"], name: "index_i_software_insts_on_server_id"

  create_table "i_softwares", force: true do |t|
    t.string   "i_software_name"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "integrations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "project_name"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "solicitation_date"
    t.date     "allocation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", force: true do |t|
    t.string   "server_name"
    t.string   "cpu"
    t.string   "memory"
    t.string   "storage"
    t.string   "ip_address"
    t.string   "oper_sys"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
