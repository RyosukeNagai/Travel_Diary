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

ActiveRecord::Schema.define(version: 2020_07_12_103736) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "travel_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "travel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.integer "preparation_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preparations", force: :cascade do |t|
    t.integer "shiori_id"
    t.integer "genre_id"
    t.string "name"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "shiori_id"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.text "plan"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shioris", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.string "shiori_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "souvenirs", force: :cascade do |t|
    t.integer "shiori_id"
    t.string "name"
    t.integer "count"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.string "address"
    t.string "travel_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "password"
    t.string "introduce"
    t.string "user_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
