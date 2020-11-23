class AsistenciasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_asistencia, only: [:show, :edit, :update, :destroy]

  def index
    
    # authorize Asistencia
    @asistencias = Asistencia.all
    @grafica_asistencia = Asistencia.group_by_day(:created_at).count

  end

  def show
    # authorize @asistencia
    @users=@asistencia.users
  

  end

  def new
    
    @asistencia = Asistencia.new
    # authorize @asistencia
  end

  def create
    @asistencia= Asistencia.new(asistencia_params)
    if @asistencia.save
      redirect_to asistencias_path
      flash.notice= 'Asistencia creada'
    else
      render :new
    end
  end

  def edit
    # authorize @asistencia
  end

  def update
    if @asistencia.update(asistencia_params)
      redirect_to asistencias_path
      flash.notice= 'Asistencia actualizada'
    else
      render :edit
    end
  end

  def destroy
    @asistencia.destroy
    redirect_to asistencias_path
    flash.alert= 'Asistencia eliminada'
  end

  private

  def set_asistencia
    @asistencia =Asistencia.find(params[:id])
  end

  def asistencia_params
    params.require(:asistencia).permit(:fecha, user_ids:  [])
  end
end
