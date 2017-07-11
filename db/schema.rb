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

ActiveRecord::Schema.define(version: 20170711065852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion", default: "Descripcion Categoria"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "deleted"
  end

  create_table "product_details", force: :cascade do |t|
    t.string   "estado"
    t.integer  "product_id"
    t.datetime "fecha_ingreso"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "product_removals", force: :cascade do |t|
    t.datetime "fecha_eliminacion"
    t.integer  "product_detail_id"
    t.string   "observaciones"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion",      default: "Descripcion Producto"
    t.string   "marca",            default: "Marca Producto"
    t.integer  "category_id"
    t.integer  "stock_total",      default: 20
    t.integer  "stock_fisico",     default: 20
    t.integer  "stock_disponible", default: 20
    t.string   "estado",           default: "Disponible"
    t.integer  "dias_prestamo",    default: 5
    t.string   "imagen"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.boolean  "deleted"
  end

  create_table "solicitud_reservas", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "productos_solicitados"
    t.integer  "productos_asignados"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.string   "estado"
    t.boolean  "usar_afuera"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "rut",                    default: "rut"
    t.string   "nombre"
    t.string   "apellido",               default: "Apellido"
    t.string   "telefono",               default: "93424562"
    t.string   "email"
    t.string   "password"
    t.string   "rol"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "encrypted_password",     default: "",            null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "escuela",                default: "Informatica"
    t.string   "direccion"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
