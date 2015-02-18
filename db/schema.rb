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

ActiveRecord::Schema.define(version: 20150217034307) do

  create_table "afiliados", force: :cascade do |t|
    t.string   "codigo",       limit: 255
    t.string   "nombre",       limit: 255
    t.string   "apellido",     limit: 255
    t.string   "genero",       limit: 255
    t.integer  "edad",         limit: 4
    t.string   "estado_civil", limit: 255
    t.string   "string",       limit: 255
    t.text     "tipo_id",      limit: 65535
    t.text     "no_id",        limit: 65535
    t.string   "direccion1",   limit: 255
    t.string   "direccion2",   limit: 255
    t.string   "ciudad",       limit: 255
    t.string   "municipio",    limit: 255
    t.string   "departamento", limit: 255
    t.string   "pais",         limit: 255
    t.string   "actividad",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
