class AlunosController < ApplicationController
    def index
      @alunos = Aluno.all
    end
  
    def show
      @aluno = Aluno.find(params[:id])
    end
  
    def new
      @aluno = Aluno.new
    end
  
    def create
      @aluno = Aluno.new(aluno_params)
      if @aluno.save
        redirect_to alunos_path, notice: 'Aluno cadastrado com sucesso.'
      else
        render 'new'
      end
    end
  
    def edit
      @aluno = Aluno.find(params[:id])
    end
  
    def update
      @aluno = Aluno.find(params[:id])
      if @aluno.update(aluno_params)
        redirect_to alunos_path, notice: 'Aluno atualizado com sucesso.'
      else
        render 'edit'
      end
    end
  
    def destroy
      @aluno = Aluno.find(params[:id])
      @aluno.destroy
      redirect_to alunos_path, notice: 'Aluno excluído com sucesso.'
    end
  
    private
  
    def aluno_params
      params.require(:aluno).permit(:matricula, :nome)
    end
  end
  