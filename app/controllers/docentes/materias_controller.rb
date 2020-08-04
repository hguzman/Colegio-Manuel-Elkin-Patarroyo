class Docentes::MateriasController < ApplicationController

  before_action :set_docente
  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  def index
    @materias = @docente.materias
  end

  def show

  end

  def edit

  end

  def new
    @materia = @docente.materias.new
  end

  def create
    @materia = @docente.materias.new(materia_params)
    if @materia.save
      redirect_to docente_materia_path(@docente, @materia), success: "Materia registrada"
    else
      render :new
    end
  end


  def update
    if @materia.update(materia_params)
      redirect_to  docente_materia_path(@docente, @materia), info: "Materia actualizada"
    else
      render :edit
    end
  end

  def destroy
    @materia.destroy
    redirect_to docente_materias_path(@docente), danger: "Materia eliminada"
  end

  private

  def set_materia
    @materia = @docente.materias.find(params[:id])
  end

  def set_docente
    @docente = Docente.find(params[:docente_id])
  end

  def materia_params
    params.require(:materia).permit(:nombre)
  end

end
