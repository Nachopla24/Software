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

ActiveRecord::Schema.define(version: 20180503220335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnoAsignatura", force: :cascade do |t|
    t.bigint "alumnos_id"
    t.bigint "asignaturas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alumnos_id"], name: "index_alumnoAsignatura_on_alumnos_id"
    t.index ["asignaturas_id"], name: "index_alumnoAsignatura_on_asignaturas_id"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "carreras_id"

  end

  create_table "posts", force: :cascade do |t|
    t.bigint "alumno_id"
    t.string "titulo"
    t.string "descripcion"
    t.integer "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.index ["alumno_id"], name: "index_posts_on_alumno_id"
  end

  create_table "universidads", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "numDireccion"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "departamento_id"
  end

  add_foreign_key "alumnoAsignatura", "alumnos", column: "alumnos_id"
  add_foreign_key "alumnoAsignatura", "asignaturas", column: "asignaturas_id"
  add_foreign_key "carreraAsignatura", "asignaturas", column: "asignaturas_id"
  add_foreign_key "carreraAsignatura", "carreras", column: "carreras_id"
  add_foreign_key "carreras", "universidads"
  add_foreign_key "departamentos", "carreras", column: "carreras_id"
  add_foreign_key "posts", "alumnos"
  add_foreign_key "universidads", "departamentos"
end
