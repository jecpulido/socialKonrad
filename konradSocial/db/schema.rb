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

ActiveRecord::Schema.define(version: 2018_08_12_033706) do

  create_table "correos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "correo"
    t.bigint "Usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Usuario_id"], name: "index_correos_on_Usuario_id"
  end

  create_table "entradas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "texto"
    t.datetime "fecha"
    t.integer "parentId"
    t.bigint "Usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Usuario_id"], name: "index_entradas_on_Usuario_id"
  end

  create_table "reaccions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "Entrada_id"
    t.bigint "Usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Entrada_id"], name: "index_reaccions_on_Entrada_id"
    t.index ["Usuario_id"], name: "index_reaccions_on_Usuario_id"
  end

  create_table "relacions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "Usuario_id"
    t.integer "usuario2"
    t.boolean "isVNombre"
    t.boolean "isVApellido"
    t.boolean "isVFechaNac"
    t.boolean "isVTelefono"
    t.boolean "isVCorreo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Usuario_id"], name: "index_relacions_on_Usuario_id"
  end

  create_table "telefonos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "numero"
    t.bigint "Usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Usuario_id"], name: "index_telefonos_on_Usuario_id"
  end

  create_table "usuarios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.date "fechaNacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "correos", "usuarios", column: "Usuario_id"
  add_foreign_key "entradas", "usuarios", column: "Usuario_id"
  add_foreign_key "reaccions", "entradas", column: "Entrada_id"
  add_foreign_key "reaccions", "usuarios", column: "Usuario_id"
  add_foreign_key "relacions", "usuarios", column: "Usuario_id"
  add_foreign_key "telefonos", "usuarios", column: "Usuario_id"
end
