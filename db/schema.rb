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

ActiveRecord::Schema.define(version: 20160515143421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.string   "description"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "salad_id"
  end

  add_index "quantities", ["ingredient_id"], name: "index_quantities_on_ingredient_id", using: :btree
  add_index "quantities", ["salad_id"], name: "index_quantities_on_salad_id", using: :btree

  create_table "salads", force: :cascade do |t|
    t.string   "name"
    t.integer  "nb_guests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "quantities", "ingredients"
  add_foreign_key "quantities", "salads"
end
