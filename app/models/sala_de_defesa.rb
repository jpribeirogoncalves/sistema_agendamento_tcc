class SalaDeDefesa < ApplicationRecord
    validates :codigo_sala, presence: true, uniqueness: true
    validates :nome_sala, presence: true
    validates :local, presence: true
    validates :horario_inicio, presence: true
    validates :horario_termino, presence: true
    validates :reservado, inclusion: { in: [true, false] }
  
    has_many :agendamentos, class_name: 'Agendamento', foreign_key: 'sala_de_defesa_id'
  end
  