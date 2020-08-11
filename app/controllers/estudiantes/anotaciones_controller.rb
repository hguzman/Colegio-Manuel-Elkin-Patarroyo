class Estudiantes::AnotacionesController < ApplicationController

  before_action :set_estudiante
  before_action :set_anotacion, only: [:show, :edit, :update, :destroy]

  def index
    @anotaciones = @estudiante.anotaciones
  end

  def show
  end

  def edit
  end

  def new
    @anotacion = @estudiante.anotaciones.new
  end

  def create
    @anotacion = @estudiante.anotaciones.new(anotacion_params)
    if @anotacion.save
      redirect_to estudiante_anotacion_path(@estudiante, @anotacion)
    else
      render :new
    end
  end

  def update
    if @anotacion.update(anotacion_params)
      redirect_to  estudiante_anotacion_path(@estudiante, @anotacion)
    else
      render :edit
    end
  end

  def destroy
    @anotacion.destroy
    redirect_to estudiante_anotaciones_path(@estudiante)
  end

  private

  def set_anotacion
    @anotacion = @estudiante.anotaciones.find(params[:id])
  end

  def set_estudiante
    @estudiante = Estudiante.find(params[:estudiante_id])
  end

  def anotacion_params
    params.require(:anotacion).permit(:titulo,:fecha,:contenido)
  end

end
