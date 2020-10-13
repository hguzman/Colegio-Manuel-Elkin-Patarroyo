class AsistenciasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_asistencia, only: [:show, :edit, :update, :destroy]

  def index
    
   
    @asistencias = Asistencia.all


  end

  def show

    @users=@asistencia.users
  

  end

  def new
    
    @asistencia = Asistencia.new


    

  end

  def create
    @asistencia= Asistencia.new(asistencia_params)
    if @asistencia.save
      redirect_to asistencias_path
      flash.notice= 'Asistencia creado'
    else
      render :new
    end
  end

  def edit


  end

  def update
    if @asistencia.update(asistencia_params)
      redirect_to asistencias_path
      flash.notice= 'Asistencia actualizado'
    else
      render :edit
    end
  end

  def destroy
    @asistencia.destroy
    redirect_to asistencias_path
    flash.alert= 'Asistencia eliminado'
  end

  private

  def set_asistencia
    @asistencia =Asistencia.find(params[:id])
  end

  def asistencia_params
    params.require(:asistencia).permit(:fecha, user_ids:  [])
  end
end
