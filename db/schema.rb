# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_08_19_001839) do
  create_table "ai_states", force: :cascade do |t|
    t.integer "enemy_id", null: false
    t.string "state"
    t.integer "target_id"
    t.string "current_action"
    t.datetime "last_action_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enemy_id"], name: "index_ai_states_on_enemy_id"
  end

  create_table "enemies", force: :cascade do |t|
    t.string "type"
    t.integer "health"
    t.integer "speed"
    t.integer "position_x"
    t.integer "position_y"
    t.integer "target_position_x"
    t.integer "target_position_y"
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_enemies_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "state"
    t.integer "current_wave"
    t.integer "map_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["map_id"], name: "index_games_on_map_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.text "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.datetime "last_active_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_player_sessions_on_game_id"
    t.index ["user_id"], name: "index_player_sessions_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.integer "gold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_resources_on_game_id"
    t.index ["user_id"], name: "index_resources_on_user_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "number"
    t.integer "enemy_count"
    t.datetime "spawn_time"
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_rounds_on_game_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "game_id", null: false
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_scores_on_game_id"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "towers", force: :cascade do |t|
    t.string "type"
    t.integer "level"
    t.integer "position_x"
    t.integer "position_y"
    t.integer "damage"
    t.integer "range"
    t.integer "game_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_towers_on_game_id"
    t.index ["user_id"], name: "index_towers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encrypted_password"
    t.integer "towers_placed"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "ai_states", "enemies"
  add_foreign_key "enemies", "games"
  add_foreign_key "games", "maps"
  add_foreign_key "player_sessions", "games"
  add_foreign_key "player_sessions", "users"
  add_foreign_key "resources", "games"
  add_foreign_key "resources", "users"
  add_foreign_key "rounds", "games"
  add_foreign_key "scores", "games"
  add_foreign_key "scores", "users"
  add_foreign_key "towers", "games"
  add_foreign_key "towers", "users"
end
