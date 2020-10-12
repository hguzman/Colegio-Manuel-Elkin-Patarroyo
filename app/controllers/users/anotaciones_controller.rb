class Users::AnotacionesController < ApplicationController
    before_action :set_user
    before_action :set_anotacion, only: [:show, :edit, :update, :destroy]

    
  
    def index
      @anotaciones = @user.anotaciones
      
    end
  
    
  
    def show
    end
  
    def edit
    end
  
    def new
      @anotacion = @user.anotaciones.new
    end
  
    def create
      @anotacion = @user.anotaciones.new(anotacion_params)
      if @anotacion.save
        flash[:success] = "Anotación creada"
        redirect_to user_anotaciones_path(@user, @anotacion)
      else
        render :new
      end
    end
  
    def update
      if @anotacion.update(anotacion_params)
        flash.notice = "Anotación actualizada"
        redirect_to  user_anotacion_path(@user, @anotacion)
      else
        render :edit
      end
    end
  
    def destroy
      @anotacion.destroy
      flash.alert = "Anotación eliminada"
      redirect_to user_anotaciones_path(@user)
    end
  
    private
  
    def set_anotacion
      @anotacion = @user.anotaciones.find(params[:id])
    end
  
    def set_user
      @user = User.find(params[:user_id])
    end
  
    def anotacion_params
      params.require(:anotacion).permit(:titulo,:fecha,:contenido)
    end
end
