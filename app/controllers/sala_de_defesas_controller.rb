class SalaDeDefesasController < ApplicationController
    def index
      @salas_de_defesa = SalaDeDefesa.all
    end
  
    def show
      @sala_de_defesa = SalaDeDefesa.find(params[:id])
    end
  
    def new
      @sala_de_defesa = SalaDeDefesa.new
    end
  
    def create
      @sala_de_defesa = SalaDeDefesa.new(sala_de_defesa_params)
      if @sala_de_defesa.save
        redirect_to sala_de_defesas_path, notice: 'Sala de defesa cadastrada com sucesso.'
      else
        render 'new'
      end
    end
  
    def edit
      @sala_de_defesa = SalaDeDefesa.find(params[:id])
    end
  
    def update
      @sala_de_defesa = SalaDeDefesa.find(params[:id])
      if @sala_de_defesa.update(sala_de_defesa_params)
        redirect_to sala_de_defesas_path, notice: 'Sala de defesa atualizada com sucesso.'
      else
        render 'edit'
      end
    end
  
    def destroy
      @sala_de_defesa = SalaDeDefesa.find(params[:id])
      @sala_de_defesa.destroy
      redirect_to sala_de_defesas_path, notice: 'Sala de defesa excluída com sucesso.'
    end
  
    private
  
    def sala_de_defesa_params
      params.require(:sala_de_defesa).permit(:codigo_sala, :nome_sala, :local, :horario_inicio, :horario_termino, :reservado)
    end
  end
  