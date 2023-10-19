class CreateSalaDeDefesas < ActiveRecord::Migration[7.1]
  def change
    create_table :sala_de_defesas do |t|
      t.string :codigo_sala
      t.string :nome_sala
      t.string :local
      t.datetime :horario_inicio
      t.datetime :horario_termino
      t.boolean :reservado

      t.timestamps
    end
  end
end
