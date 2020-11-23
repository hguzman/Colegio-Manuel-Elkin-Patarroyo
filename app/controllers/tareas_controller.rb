class TareasController < ApplicationController
#  before_action :set_user
    before_action :set_tarea, only: [:show, :edit, :update, :destroy]

    def index
      @tareas = Tarea.all
    end

    def new
      @tarea = Tarea.new
    end

    def create
      @tarea = Tarea.new(tarea_params)
      if @tarea.save
        flash[:success] = "Tarea creada"
        redirect_to tareas_path(@tarea)
      else
        render :new
      end
    end


    def show
    end

    def edit
    end

    private

  #  def set_user
  #    @user = User.find(params[:user_id])
  #  end

    def set_tarea
      @tareas = Tarea.find(params[:id])
    end

    def tarea_params
      params.require(:tarea).permit(:tarea,:solucion,:adjunto, user_ids: [])
    end
end
