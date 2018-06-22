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

ActiveRecord::Schema.define(version: 20180622060415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asignaturas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carreraAsignatura", force: :cascade do |t|
    t.bigint "carreras_id"
    t.bigint "asignaturas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asignaturas_id"], name: "index_carreraAsignatura_on_asignaturas_id"
    t.index ["carreras_id"], name: "index_carreraAsignatura_on_carreras_id"
  end

  create_table "carreras", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "universidad_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "titulo"
    t.string "descripcion"
    t.integer "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "user_id"
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.integer "cached_weighted_score", default: 0
    t.integer "cached_weighted_total", default: 0
    t.float "cached_weighted_average", default: 0.0
  end

  create_table "universidads", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "numDireccion"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userAsignatura", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "asignaturas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asignaturas_id"], name: "index_userAsignatura_on_asignaturas_id"
    t.index ["users_id"], name: "index_userAsignatura_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "nombre"
    t.boolean "alumno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

  add_foreign_key "carreraAsignatura", "asignaturas", column: "asignaturas_id"
  add_foreign_key "carreraAsignatura", "carreras", column: "carreras_id"
  add_foreign_key "carreras", "universidads"
  add_foreign_key "posts", "users"
  add_foreign_key "userAsignatura", "asignaturas", column: "asignaturas_id"
  add_foreign_key "userAsignatura", "users", column: "users_id"
end
