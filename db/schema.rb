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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120430215553) do

  create_table "casos", :force => true do |t|
    t.string   "autor"
    t.text     "corpo"
    t.text     "ref"
    t.boolean  "ativo",      :default => false
    t.integer  "crime_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "casos", ["crime_id"], :name => "index_casos_on_crime_id"

  create_table "contatos", :force => true do |t|
    t.string   "email"
    t.string   "nome"
    t.text     "msg"
    t.string   "assunto"
    t.boolean  "open",       :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "crimes", :force => true do |t|
    t.string   "nome"
    t.text     "capit"
    t.string   "pena"
    t.string   "acao_penal"
    t.string   "competencia"
    t.string   "fonte",       :default => "CPB - DECRETO-LEI No 2.848, DE 7 DE DEZEMBRO DE 1940."
    t.datetime "created_at",                                                                       :null => false
    t.datetime "updated_at",                                                                       :null => false
  end

  create_table "doutrinas", :force => true do |t|
    t.string   "autor"
    t.text     "corpo"
    t.text     "ref"
    t.boolean  "ativo",      :default => false
    t.integer  "crime_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "doutrinas", ["crime_id"], :name => "index_doutrinas_on_crime_id"

  create_table "juris", :force => true do |t|
    t.string   "orgao"
    t.text     "corpo"
    t.text     "ref"
    t.boolean  "ativo",      :default => false
    t.integer  "crime_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "juris", ["crime_id"], :name => "index_juris_on_crime_id"

  create_table "modalidades", :force => true do |t|
    t.string   "titulo"
    t.text     "b_legal"
    t.text     "anotacoes"
    t.string   "pena"
    t.integer  "crime_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "modalidades", ["crime_id"], :name => "index_modalidades_on_crime_id"

  create_table "qts", :force => true do |t|
    t.text     "assertiva"
    t.string   "resposta"
    t.boolean  "ativo",      :default => false
    t.integer  "crime_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "qts", ["crime_id"], :name => "index_qts_on_crime_id"

  create_table "temas", :force => true do |t|
    t.string   "autor"
    t.string   "titulo"
    t.text     "corpo"
    t.text     "ref"
    t.boolean  "ativo",      :default => false
    t.integer  "crime_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "temas", ["crime_id"], :name => "index_temas_on_crime_id"

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
