class CursosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_curso, only: [:show, :edit, :update, :destroy]

  def index
   
    @cursos = Curso.all


  end

  def show

  end

  def new
    
    @curso = Curso.new
    

  end

  def create
    @curso = Curso.new(curso_params)
    if @curso.save
      redirect_to cursos_path
      flash.notice= 'curso creado'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @curso.update(curso_params)
      redirect_to cursos_path
      flash.notice= 'curso actualizado'
    else
      render :edit
    end
  end

  def destroy
    @curso.destroy
    redirect_to cursos_path
    flash.alert= 'Curso eliminado'
  end

  private

  def set_curso
    @curso =Curso.find(params[:id])
  end

  def curso_params
    params.require(:curso).permit(:codigo,:nombre)
  end
end
