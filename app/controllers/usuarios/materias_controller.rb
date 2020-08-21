class Usuarios::MateriasController < ApplicationController
  before_action :set_usuario
  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  def index
    @materias = @usuario.materias
  end

  def show
  end

  def edit
  end

  def new
    @materia = @usuario.materias.new
  end

  def create
    @materia = @usuario.materias.new(materia_params)
    if @materia.save
      flash.notice = "Materia creada"
      redirect_to usuario_materia_path(@usuario, @materia)
    else
      render :new
    end
  end

  def update
    if @materia.update(materia_params)
      flash.notice="Materia Actualizada"
      redirect_to  usuario_materia_path(@usuario, @materia)
    else
      render :edit
    end
  end

  def destroy
    @materia.destroy
    flash.alert="Materia Eliminada"
    redirect_to usuario_materias_path(@usuario)
  end

  private

  def set_materia
    @materia = @usuario.materias.find(params[:id])
  end

  def set_usuario
    @usuario = Usuario.find(params[:usuario_id])
  end

  def materia_params
    params.require(:materia).permit(:codigo,:nombre)
  end

end
