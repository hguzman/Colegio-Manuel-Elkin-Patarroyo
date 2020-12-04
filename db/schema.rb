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

ActiveRecord::Schema.define(version: 2020_12_03_235324) do

  create_table "anotaciones", force: :cascade do |t|
    t.date "fecha"
    t.string "titulo"
    t.text "contenido"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_anotaciones_on_user_id"
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

  create_table "comentarios", force: :cascade do |t|
    t.string "comentario"
    t.integer "anotacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["anotacion_id"], name: "index_comentarios_on_anotacion_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "materias", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "curso_id"
    t.index ["curso_id"], name: "index_materias_on_curso_id"
    t.index ["user_id"], name: "index_materias_on_user_id"
  end

  create_table "notas", force: :cascade do |t|
    t.string "logro"
    t.decimal "nota"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "materia_id"
    t.index ["materia_id"], name: "index_notas_on_materia_id"
    t.index ["user_id"], name: "index_notas_on_user_id"
  end

  create_table "noticias", force: :cascade do |t|
    t.string "titulo"
    t.text "informacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "fecha"
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

  create_table "tareas", force: :cascade do |t|
    t.string "tarea"
    t.text "solucion"
    t.string "adjunto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_tareas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "identifiacion"
    t.string "nombres"
    t.string "apellidos"
    t.integer "telefono"
    t.string "direccion"
    t.integer "curso_id"
    t.string "avatar"
    t.string "segundo_nombre"
    t.string "segundo_apellido"
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
  add_foreign_key "comentarios", "anotaciones"
  add_foreign_key "materias", "cursos"
  add_foreign_key "materias", "users"
  add_foreign_key "notas", "materias"
  add_foreign_key "notas", "users"
  add_foreign_key "tareas", "users"
  add_foreign_key "users", "cursos"
end
