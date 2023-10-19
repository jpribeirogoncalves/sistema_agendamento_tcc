class CreateProfessors < ActiveRecord::Migration[7.1]
  def change
    create_table :professors do |t|
      t.string :cpf
      t.string :nome
      t.string :instituicao
      t.boolean :externo

      t.timestamps
    end
  end
end
