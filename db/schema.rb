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

ActiveRecord::Schema.define(version: 2017_08_09_033215) do

  create_table "heroes", force: :cascade do |t|
    t.string "name", null: false
    t.string "img", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_data", force: :cascade do |t|
    t.integer "level", null: false
    t.integer "sr", null: false
    t.integer "player_id"
    t.integer "mainQP_id"
    t.integer "mainComp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mainComp_id"], name: "index_player_data_on_mainComp_id"
    t.index ["mainQP_id"], name: "index_player_data_on_mainQP_id"
    t.index ["player_id"], name: "index_player_data_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "battle_tag"
    t.string "player_icon"
    t.string "platform"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
