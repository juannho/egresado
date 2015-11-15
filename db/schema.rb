# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151115063858) do

  create_table "empresas", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "razon_social"
    t.string   "telefono"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "empresas", ["email"], name: "index_empresas_on_email", unique: true
  add_index "empresas", ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true

  create_table "pagos", force: :cascade do |t|
    t.integer  "monto"
    t.integer  "numero_vistas"
    t.integer  "empresa_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "pagos", ["empresa_id"], name: "index_pagos_on_empresa_id"

  create_table "portafolios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "archivo"
    t.string   "descripcion"
    t.integer  "titulado_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "portafolios", ["titulado_id"], name: "index_portafolios_on_titulado_id"

  create_table "recomendaciones", force: :cascade do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.string   "detalle"
    t.integer  "titulado_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recomendaciones", ["titulado_id"], name: "index_recomendaciones_on_titulado_id"

  create_table "titulados", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "extracto"
    t.string   "colegio_media"
    t.string   "titulo_media"
    t.string   "institucion"
    t.string   "titulo_institucion"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "titulados", ["email"], name: "index_titulados_on_email", unique: true
  add_index "titulados", ["reset_password_token"], name: "index_titulados_on_reset_password_token", unique: true

  create_table "vistos", force: :cascade do |t|
    t.integer  "empresa_id"
    t.integer  "titulado_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vistos", ["empresa_id"], name: "index_vistos_on_empresa_id"
  add_index "vistos", ["titulado_id"], name: "index_vistos_on_titulado_id"

end
