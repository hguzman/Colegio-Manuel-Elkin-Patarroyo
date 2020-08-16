class Usuarios::AnotacionesController < ApplicationController
  before_action :set_usuario
  before_action :set_anotacion, only: [:show, :edit, :update, :destroy]

  def index
    @anotaciones = @usuario.anotaciones
  end

  def show
  end

  def edit
  end

  def new
    @anotacion = @usuario.anotaciones.new
  end

  def create
    @anotacion = @usuario.anotaciones.new(anotacion_params)
    if @anotacion.save
      redirect_to usuario_anotacion_path(@usuario, @anotacion)
    else
      render :new
    end
  end

  def update
    if @anotacion.update(anotacion_params)
      redirect_to  usuario_anotacion_path(@usuario, @anotacion)
    else
      render :edit
    end
  end

  def destroy
    @anotacion.destroy
    redirect_to usuario_anotaciones_path(@usuario)
  end

  private

  def set_anotacion
    @anotacion = @usuario.anotaciones.find(params[:id])
  end

  def set_usuario
    @usuario = Usuario.find(params[:usuario_id])
  end

  def anotacion_params
    params.require(:anotacion).permit(:titulo,:fecha,:contenido)
  end

end
