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

ActiveRecord::Schema.define(version: 2018_12_11_012048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievement_collections", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_achievement_collections_on_challenge_id"
    t.index ["user_id"], name: "index_achievement_collections_on_user_id"
  end

  create_table "achievements", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "score"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_achievements_on_user_id"
  end

  create_table "badges", force: :cascade do |t|
    t.string "image"
    t.string "goal"
    t.text "description"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_badges_on_challenge_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.integer "score"
    t.string "poster"
    t.string "family"
    t.bigint "insect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "done"
    t.index ["insect_id"], name: "index_challenges_on_insect_id"
  end

  create_table "collections", force: :cascade do |t|
    t.bigint "insect_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["insect_id"], name: "index_collections_on_insect_id"
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "insects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "family"
    t.string "rarity"
    t.string "location"
    t.boolean "dangerous"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "kingdom"
    t.string "order"
    t.string "class_insect"
    t.string "scientific_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "achievement_collections", "challenges"
  add_foreign_key "achievement_collections", "users"
  add_foreign_key "achievements", "users"
  add_foreign_key "badges", "challenges"
  add_foreign_key "challenges", "insects"
  add_foreign_key "collections", "insects"
  add_foreign_key "collections", "users"
end
