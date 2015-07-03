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

ActiveRecord::Schema.define(version: 20150703015740) do

  create_table "atividades", force: :cascade do |t|
    t.string   "nome",            limit: 255
    t.string   "tipo",            limit: 255
    t.text     "descricao",       limit: 65535
    t.text     "observacao",      limit: 65535
    t.text     "acompanhamento",  limit: 65535
    t.string   "status",          limit: 255
    t.integer  "oportunidade_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "atividades", ["oportunidade_id"], name: "index_atividades_on_oportunidade_id", using: :btree

  create_table "cliente_potencials", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.text     "descricao",  limit: 65535
    t.string   "website",    limit: 255
    t.text     "observacao", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "contatos", force: :cascade do |t|
    t.string   "nome",                 limit: 255
    t.string   "cargo",                limit: 255
    t.string   "telefone",             limit: 255
    t.string   "celular",              limit: 255
    t.string   "email",                limit: 255
    t.string   "facebook",             limit: 255
    t.string   "linkedin",             limit: 255
    t.string   "googleplus",           limit: 255
    t.integer  "cliente_potencial_id", limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "contatos", ["cliente_potencial_id"], name: "index_contatos_on_cliente_potencial_id", using: :btree

  create_table "oportunidades", force: :cascade do |t|
    t.string   "nome",                 limit: 255
    t.string   "descricao",            limit: 255
    t.text     "observacao",           limit: 65535
    t.string   "status",               limit: 255
    t.decimal  "receita_estimada",                   precision: 10
    t.string   "probabilidade",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "cliente_potencial_id", limit: 4
  end

  add_index "oportunidades", ["cliente_potencial_id"], name: "index_oportunidades_on_cliente_potencial_id", using: :btree

  create_table "produtos", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.text     "descricao",  limit: 65535
    t.decimal  "preco",                    precision: 10
    t.text     "obs",        limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_foreign_key "atividades", "oportunidades"
  add_foreign_key "contatos", "cliente_potencials"
  add_foreign_key "oportunidades", "cliente_potencials"
end
