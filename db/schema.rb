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

ActiveRecord::Schema.define(version: 20130801010910) do

  create_table "fats", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marinades", force: true do |t|
    t.text     "name"
    t.text     "body"
    t.time     "time"
    t.integer  "spice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "marinades", ["spice_id"], name: "index_marinades_on_spice_id"

  create_table "meals", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preps", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "protein_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preps", ["protein_id"], name: "index_preps_on_protein_id"

  create_table "proteins", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "vegetable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "time"
  end

  add_index "recipes", ["vegetable_id"], name: "index_recipes_on_vegetable_id"

  create_table "spices", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vegetables", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
