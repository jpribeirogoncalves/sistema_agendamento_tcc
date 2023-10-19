class Aluno < ApplicationRecord
    validates :matricula, presence: true, uniqueness: true
    validates :nome, presence: true
  
    has_many :agendamentos, class_name: 'Agendamento', foreign_key: 'aluno_id'
  end
  