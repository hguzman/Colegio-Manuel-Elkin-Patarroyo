# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_29_191410) do

  create_table "anotaciones", force: :cascade do |t|
    t.date "fecha"
    t.string "titulo"
    t.text "contenido"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_anotaciones_on_user_id"
  end

  create_table "articulos", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.text "informacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "picture"
  end

  create_table "asistencias", force: :cascade do |t|
    t.date "fecha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "asistencias_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "asistencia_id", null: false
    t.index ["asistencia_id"], name: "index_asistencias_users_on_asistencia_id"
    t.index ["user_id"], name: "index_asistencias_users_on_user_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "materias", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_materias_on_user_id"
  end

  create_table "notas", force: :cascade do |t|
    t.string "logro"
    t.decimal "nota"
    t.integer "materia_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["materia_id"], name: "index_notas_on_materia_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "direccion"
    t.string "picture"
    t.integer "curso_id"
    t.integer "identificacion"
    t.index ["curso_id"], name: "index_users_on_curso_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "anotaciones", "users"
  add_foreign_key "materias", "users"
  add_foreign_key "notas", "materias"
  add_foreign_key "users", "cursos"
end
