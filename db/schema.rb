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

ActiveRecord::Schema.define(version: 20160725202154) do

  create_table "employee_roles", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "role_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.date     "date_of_birth"
    t.string   "hometown"
    t.date     "start_date"
    t.integer  "bonus"
    t.boolean  "current_employee"
    t.integer  "location_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "food_item_ingredients", force: :cascade do |t|
    t.integer  "food_item_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "food_item_orders", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "food_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "cost"
    t.string   "serving_size"
    t.string   "ingredients_description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.integer  "calories"
    t.boolean  "meat"
    t.boolean  "dairy"
    t.boolean  "poultry"
    t.boolean  "perishable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_food_items", force: :cascade do |t|
    t.integer  "food_item_id"
    t.integer  "location_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "location"
    t.date     "opening_date"
    t.string   "city"
    t.string   "state"
    t.integer  "restaurant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "motto"
    t.string   "founder"
    t.date     "date_founded"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.integer  "starting_salary"
    t.string   "next_possible_promotion"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
