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

ActiveRecord::Schema[7.1].define(version: 2023_12_01_131252) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.integer "progress"
    t.bigint "match_id", null: false
    t.integer "participation_id"
    t.bigint "user_id", null: false
    t.integer "user_reward_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_bets_on_match_id"
    t.index ["participation_id"], name: "index_bets_on_participation_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
    t.index ["user_reward_id"], name: "index_bets_on_user_reward_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "sport"
    t.datetime "date"
    t.boolean "funbet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.float "odd"
    t.integer "score"
    t.bigint "team_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_participations_on_match_id"
    t.index ["team_id"], name: "index_participations_on_team_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "method_name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "squads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "sport"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_rewards", force: :cascade do |t|
    t.integer "progress"
    t.bigint "user_id", null: false
    t.bigint "reward_id", null: false
    t.bigint "target_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reward_id"], name: "index_user_rewards_on_reward_id"
    t.index ["target_id"], name: "index_user_rewards_on_target_id"
    t.index ["user_id"], name: "index_user_rewards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.text "avatar"
    t.integer "points_counter"
    t.bigint "squad_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["squad_id"], name: "index_users_on_squad_id"
  end

  add_foreign_key "bets", "matches"
  add_foreign_key "bets", "participations"
  add_foreign_key "bets", "user_rewards"
  add_foreign_key "bets", "users"
  add_foreign_key "participations", "matches"
  add_foreign_key "participations", "teams"
  add_foreign_key "user_rewards", "rewards"
  add_foreign_key "user_rewards", "users"
  add_foreign_key "user_rewards", "users", column: "target_id"
  add_foreign_key "users", "squads"
end
