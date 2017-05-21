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

ActiveRecord::Schema.define(version: 20170520215111) do

  create_table "categoria", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion", default: "Descripcion Categoria"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion",      default: "Descripcion Producto"
    t.string   "marca",            default: "Marca Producto"
    t.integer  "category_id"
    t.integer  "stock_total",      default: 20
    t.integer  "stock_fisico",     default: 20
    t.integer  "stock_disponible", default: 20
    t.string   "estado",           default: "Disponible"
    t.string   "imagen"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

end
