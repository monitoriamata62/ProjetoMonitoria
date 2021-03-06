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

ActiveRecord::Schema.define(version: 20170401235819) do

  create_table "agendas", force: :cascade do |t|
    t.integer  "monitorium_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["monitorium_id"], name: "index_agendas_on_monitorium_id"
    t.index ["user_id"], name: "index_agendas_on_user_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "unidade_id"
    t.string   "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unidade_id"], name: "index_disciplinas_on_unidade_id"
  end

  create_table "monitoria", force: :cascade do |t|
    t.integer  "monitor_id"
    t.integer  "professor_id"
    t.integer  "disciplina_id"
    t.string   "local"
    t.date     "data"
    t.string   "horario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "capacidade"
    t.integer  "capacidadeatual"
    t.index ["disciplina_id"], name: "index_monitoria_on_disciplina_id"
    t.index ["monitor_id"], name: "index_monitoria_on_monitor_id"
    t.index ["professor_id"], name: "index_monitoria_on_professor_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_unidades_on_area_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.integer  "role",                   default: 0
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
