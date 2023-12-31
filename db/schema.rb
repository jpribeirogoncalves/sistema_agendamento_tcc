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

ActiveRecord::Schema[7.1].define(version: 2023_11_12_200841) do
  create_table "agendamentos", force: :cascade do |t|
    t.string "codigo_agendamento"
    t.integer "sala_de_defesa_id", null: false
    t.integer "aluno_id", null: false
    t.integer "professor_orientador_id", null: false
    t.integer "membro_banca_1_id", null: false
    t.integer "membro_banca_2_id", null: false
    t.integer "membro_banca_3_id", null: false
    t.integer "membro_banca_4_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_agendamentos_on_aluno_id"
    t.index ["membro_banca_1_id"], name: "index_agendamentos_on_membro_banca_1_id"
    t.index ["membro_banca_2_id"], name: "index_agendamentos_on_membro_banca_2_id"
    t.index ["membro_banca_3_id"], name: "index_agendamentos_on_membro_banca_3_id"
    t.index ["membro_banca_4_id"], name: "index_agendamentos_on_membro_banca_4_id"
    t.index ["professor_orientador_id"], name: "index_agendamentos_on_professor_orientador_id"
    t.index ["sala_de_defesa_id"], name: "index_agendamentos_on_sala_de_defesa_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.string "matricula"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.string "instituicao"
    t.boolean "externo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sala_de_defesas", force: :cascade do |t|
    t.string "codigo_sala"
    t.string "nome_sala"
    t.string "local"
    t.datetime "horario_inicio"
    t.datetime "horario_termino"
    t.boolean "reservado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "agendamentos", "alunos"
  add_foreign_key "agendamentos", "professors", column: "membro_banca_1_id"
  add_foreign_key "agendamentos", "professors", column: "membro_banca_2_id"
  add_foreign_key "agendamentos", "professors", column: "membro_banca_3_id"
  add_foreign_key "agendamentos", "professors", column: "membro_banca_4_id"
end
