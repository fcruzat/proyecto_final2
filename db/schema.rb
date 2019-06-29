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

ActiveRecord::Schema.define(version: 2019_06_29_195930) do

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.boolean "home", default: false
    t.string "photos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "lastname2"
    t.boolean "gender", default: false
    t.integer "rut"
    t.string "rut_photo"
    t.string "photo"
    t.string "country"
    t.string "city"
    t.integer "born"
    t.text "description"
    t.boolean "approbated", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
