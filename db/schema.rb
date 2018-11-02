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

ActiveRecord::Schema.define(version: 20181102040006) do

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.bigint   "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "original_scene_id"
    t.integer  "board_id"
    t.boolean  "shadows",            default: false
    t.integer  "dark",               default: 50
    t.integer  "light",              default: 50
    t.boolean  "sun",                default: true
    t.boolean  "fog",                default: false
    t.string   "bg_color",           default: "#ffffff"
    t.string   "fog_color",          default: "#000000"
    t.boolean  "fog_use_bk",         default: true
    t.boolean  "color_by_layer",     default: false
    t.boolean  "edge",               default: false
    t.integer  "render_mode",        default: 2
    t.string   "sky_color",          default: "#7EC0EE"
    t.boolean  "draw_sky",           default: false
    t.boolean  "draw_ground",        default: false
    t.string   "ground_color",       default: "#867d8c"
    t.boolean  "depth_cue",          default: false
    t.boolean  "hidden",             default: false
    t.boolean  "endpoints",          default: false
    t.boolean  "profiles",           default: false
    t.index ["user_id"], name: "index_scenes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "bio"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.bigint   "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
