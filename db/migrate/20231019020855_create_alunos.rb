class CreateAlunos < ActiveRecord::Migration[7.1]
  def change
    create_table :alunos do |t|
      t.string :matricula
      t.string :nome

      t.timestamps
    end
  end
end
