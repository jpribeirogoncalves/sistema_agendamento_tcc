class Agendamento < ApplicationRecord
  validates :codigo_agendamento, presence: true, uniqueness: true

  belongs_to :sala_de_defesa
  belongs_to :aluno
  belongs_to :professor_orientador, class_name: 'Professor', foreign_key: 'professor_orientador_id'
  belongs_to :membro_banca_1, class_name: 'Professor', foreign_key: 'membro_banca_1_id'
  belongs_to :membro_banca_2, class_name: 'Professor', foreign_key: 'membro_banca_2_id'
  belongs_to :membro_banca_3, class_name: 'Professor', foreign_key: 'membro_banca_3_id'
  belongs_to :membro_banca_4, class_name: 'Professor', foreign_key: 'membro_banca_4_id'

  validate :validar_horarios_e_sala_disponivel

  private

  def validar_horarios_e_sala_disponivel
    # Implemente aqui a lógica para verificar se a sala está disponível nos horários escolhidos
    # e se os membros da banca não estão sobrecarregados com outras defesas no mesmo horário
  end
end
