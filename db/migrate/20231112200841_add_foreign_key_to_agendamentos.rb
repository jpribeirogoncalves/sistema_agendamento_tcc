class AddForeignKeyToAgendamentos < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :agendamentos, :professors, column: :membro_banca_1_id
    add_foreign_key :agendamentos, :professors, column: :membro_banca_2_id
    add_foreign_key :agendamentos, :professors, column: :membro_banca_3_id
    add_foreign_key :agendamentos, :professors, column: :membro_banca_4_id
  end
end
