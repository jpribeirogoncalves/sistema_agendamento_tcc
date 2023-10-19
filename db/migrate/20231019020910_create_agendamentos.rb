class CreateAgendamentos < ActiveRecord::Migration[7.1]
  def change
    create_table :agendamentos do |t|
      t.string :codigo_agendamento
      t.references :sala_de_defesa, null: false, foreign_key: true
      t.references :aluno, null: false, foreign_key: true
      t.references :professor_orientador, null: false, foreign_key: true
      t.references :membro_banca_1, null: false, foreign_key: true
      t.references :membro_banca_2, null: false, foreign_key: true
      t.references :membro_banca_3, null: false, foreign_key: true
      t.references :membro_banca_4, null: false, foreign_key: true

      t.timestamps
    end
  end
end
