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

ActiveRecord::Schema.define(version: 2022_02_17_184342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agentes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "rfc"
    t.string "direccion"
    t.string "email"
    t.bigint "agente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agente_id"], name: "index_clientes_on_agente_id"
  end

  create_table "comisions", force: :cascade do |t|
    t.string "tipo"
    t.decimal "monto", precision: 10, scale: 2
    t.string "comentario"
    t.decimal "porcentaje", precision: 10, scale: 2
    t.bigint "movimiento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movimiento_id"], name: "index_comisions_on_movimiento_id"
  end

  create_table "depositos", force: :cascade do |t|
    t.decimal "monto", precision: 10, scale: 2
    t.string "banco"
    t.date "fecha"
    t.boolean "valido"
    t.string "empresa"
    t.string "nombre"
    t.bigint "movimiento_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movimiento_id"], name: "index_depositos_on_movimiento_id"
  end

  create_table "movimientos", force: :cascade do |t|
    t.decimal "total", precision: 10, scale: 2
    t.decimal "total_depositos", precision: 10, scale: 2
    t.decimal "total_retornos", precision: 10, scale: 2
    t.decimal "total_comisiones", precision: 10, scale: 2
    t.decimal "comision_agente", precision: 10, scale: 2
    t.decimal "comision_oficina", precision: 10, scale: 2
    t.string "estatus_movimiento"
    t.boolean "estatus_deposito", default: false
    t.boolean "estatus_retorno", default: false
    t.boolean "estatus_comision", default: false
    t.bigint "ticket_id"
    t.bigint "agente_id"
    t.bigint "cliente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agente_id"], name: "index_movimientos_on_agente_id"
    t.index ["cliente_id"], name: "index_movimientos_on_cliente_id"
    t.index ["ticket_id"], name: "index_movimientos_on_ticket_id"
  end

  create_table "retornos", force: :cascade do |t|
    t.decimal "monto", precision: 10, scale: 2
    t.string "nombre"
    t.text "comentarios"
    t.string "cuenta"
    t.string "clabe"
    t.string "swift"
    t.string "banco"
    t.string "dir_banco"
    t.string "no_tarjeta"
    t.boolean "valido"
    t.bigint "movimiento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movimiento_id"], name: "index_retornos_on_movimiento_id"
  end

  create_table "solicitud_facturas", force: :cascade do |t|
    t.string "estatus"
    t.decimal "total", precision: 10, scale: 2
    t.text "comentarios"
    t.bigint "agente_id"
    t.bigint "cliente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["agente_id"], name: "index_solicitud_facturas_on_agente_id"
    t.index ["cliente_id"], name: "index_solicitud_facturas_on_cliente_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.boolean "activo"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comisions", "movimientos"
  add_foreign_key "retornos", "movimientos"
end
