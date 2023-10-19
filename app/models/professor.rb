class Professor < ApplicationRecord
    validates :cpf, presence: true, uniqueness: true
    validates :nome, presence: true
    validates :instituicao, presence: true
    validates :externo, inclusion: { in: [true, false] }
  
    has_many :agendamentos_orientados, class_name: 'Agendamento', foreign_key: 'professor_orientador_id'
  end
  