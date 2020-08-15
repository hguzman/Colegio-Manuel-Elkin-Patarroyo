class EstudiantesController < ApplicationController
  before_action :authenticate_usuario!


  before_action :set_estudiante, only: [:show, :edit, :update, :destroy]
  def index
    @estudiantes=Estudiante.all
  end

  def show
  end

  def new
    @estudiante=Estudiante.new
  end

  def create
    @estudiante = Estudiante.new(estudiante_params)
    if @estudiante.save
      redirect_to estudiantes_path, success: "Estudiante creado"
    else
      render :new
    end

  end

  def update
    if @estudiante.update(estudiante_params)
      redirect_to estudiantes_path, info: "Estudiante editado"
    else
      render :edit
    end
  end

  def destroy
    @estudiante.destroy

    redirect_to estudiantes_path, danger: "Estudiante Eliminado"
  end

  def edit
  end

  def set_estudiante
    @estudiante = Estudiante.find(params[:id])
  end

  def estudiante_params
    params.require(:estudiante).permit(:nombre,:apellido,:telefono,:direccion,:correo)
  end
end
