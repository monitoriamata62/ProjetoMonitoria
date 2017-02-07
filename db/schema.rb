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

ActiveRecord::Schema.define(version: 20170207003405) do

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
    t.integer  "utilizador_id"
    t.string   "local"
    t.integer  "disciplina_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["disciplina_id"], name: "index_monitoria_on_disciplina_id"
    t.index ["utilizador_id"], name: "index_monitoria_on_utilizador_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_unidades_on_area_id"
  end

  create_table "utilizadors", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "matricula"
    t.integer  "identificador"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
