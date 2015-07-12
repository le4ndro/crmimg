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

ActiveRecord::Schema.define(version: 20150709191936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "type"
    t.string   "subdomain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner_id"
  end

  create_table "atividades", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.text     "descricao"
    t.text     "observacao"
    t.text     "acompanhamento"
    t.string   "status"
    t.integer  "oportunidade_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "atividades", ["oportunidade_id"], name: "index_atividades_on_oportunidade_id", using: :btree

  create_table "cliente_potencials", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "website"
    t.text     "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contatos", force: :cascade do |t|
    t.string   "nome"
    t.string   "cargo"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.string   "facebook"
    t.string   "linkedin"
    t.string   "googleplus"
    t.text     "observacao"
    t.integer  "cliente_potencial_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "contatos", ["cliente_potencial_id"], name: "index_contatos_on_cliente_potencial_id", using: :btree

  create_table "oportunidades", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.text     "observacao"
    t.string   "status"
    t.decimal  "receita_estimada"
    t.string   "probabilidade"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "cliente_potencial_id"
  end

  add_index "oportunidades", ["cliente_potencial_id"], name: "index_oportunidades_on_cliente_potencial_id", using: :btree

  create_table "produtos", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.decimal  "preco"
    t.text     "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "atividades", "oportunidades"
  add_foreign_key "contatos", "cliente_potencials"
  add_foreign_key "oportunidades", "cliente_potencials"
end
