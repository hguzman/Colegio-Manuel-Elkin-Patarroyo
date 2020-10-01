class CursosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_curso, only: [:show, :edit, :update, :destroy]

  def index
    authorize Curso
    @cursos = Curso.all

  end

  def show

  end

  def new

    @curso = Curso.new
    authorize @curso

  end

  def create
    @curso = Curso.new(curso_params)
    if @curso.save(validate: false)
      redirect_to cursos_path
      flash[:success]= 'curso creado'
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
    params.require(:curso).permit(:codigo,:nombre,user_ids: [])
  end
end
