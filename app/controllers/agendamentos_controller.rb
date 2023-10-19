class AgendamentosController < ApplicationController
    def index
      @agendamentos = Agendamento.all
    end
  
    def show
      @agendamento = Agendamento.find(params[:id])
    end
  
    def new
      @agendamento = Agendamento.new
    end
  
    def create
      @agendamento = Agendamento.new(agendamento_params)
      if @agendamento.save
        redirect_to agendamentos_path, notice: 'Agendamento criado com sucesso.'
      else
        render 'new'
      end
    end
  
    def edit
      @agendamento = Agendamento.find(params[:id])
    end
  
    def update
      @agendamento = Agendamento.find(params[:id])
      if @agendamento.update(agendamento_params)
        redirect_to agendamentos_path, notice: 'Agendamento atualizado com sucesso.'
      else
        render 'edit'
      end
    end
  
    def destroy
      @agendamento = Agendamento.find(params[:id])
      @agendamento.destroy
      redirect_to agendamentos_path, notice: 'Agendamento excluído com sucesso.'
    end
  
    private
  
    def agendamento_params
      params.require(:agendamento).permit(:codigo_agendamento, :sala_de_defesa_id, :aluno_id, :professor_orientador_id, :membro_banca_1_id, :membro_banca_2_id, :membro_banca_3_id, :membro_banca_4_id)
    end
  end
  