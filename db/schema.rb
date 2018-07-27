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

ActiveRecord::Schema.define(version: 2018_07_27_003528) do

  create_table "administradores", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "comentario"
    t.integer "informativo_id"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["informativo_id"], name: "index_comentarios_on_informativo_id"
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "editores", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etiquetas", force: :cascade do |t|
    t.string "nombre"
    t.integer "administrador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrador_id"], name: "index_etiquetas_on_administrador_id"
  end

  create_table "etiquetas_usuarios", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "etiqueta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etiqueta_id"], name: "index_etiquetas_usuarios_on_etiqueta_id"
    t.index ["usuario_id"], name: "index_etiquetas_usuarios_on_usuario_id"
  end

  create_table "informativos", force: :cascade do |t|
    t.string "titulo"
    t.string "imagen"
    t.string "descripcion"
    t.string "vistas"
    t.string "compartido"
    t.integer "editor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["editor_id"], name: "index_informativos_on_editor_id"
  end

  create_table "informativos_etiquetas", force: :cascade do |t|
    t.integer "informativo_id"
    t.integer "etiqueta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["etiqueta_id"], name: "index_informativos_etiquetas_on_etiqueta_id"
    t.index ["informativo_id"], name: "index_informativos_etiquetas_on_informativo_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.string "genero"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
