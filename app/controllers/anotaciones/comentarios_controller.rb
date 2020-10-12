class Anotaciones::ComentariosController < ApplicationController
  before_action :set_anotacion
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]

  def index
    @comentarios = @anotacion.comentarios
  end

  def show
  end

  def new
    @comentario = Comentario.new
  end

  def create
    @comentario = @anotacion.comentarios.new(comentario_params)
    if @comentario.save
      flash[:success] = "Comentario creado"
      redirect_to anotacion_comentarios_path(@anotacion, @comentario)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comentario.update(comentario_params)
      flash[:notice] = "Comentario actualizado"
      redirect_to anotacion_comentarios_path(@anotacion, @comentario)
    else
      render edit
    end
  end

  private

  def set_anotacion
    @anotacion = Anotacion.find(params[:anotacion_id])
  end

  def set_comentario
    @comentario = @anotacion.comentarios.find(params[:id])
  end

  def comentario_params
    params.require(:comentario).permit(:comentario)
  end

end
