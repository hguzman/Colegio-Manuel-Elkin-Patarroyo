class UsuariosController < ApplicationController


    before_action :authenticate_usuario!
    before_action :set_usuario, only: [:show, :edit, :update, :destroy]


    def index
      @usuarios=Usuario.all
    end

    def indexStudent
      @usuarios=Usuario.all
    end 
  
    def show
    end
  
    def new
      @usuario=Usuario.new
    end
  
    def create
      @usuario = Usuario.new(usuario_params)
      if @usuario.save
        redirect_to usuarios_path, success: "Usuario creado"
      else
        render :new
      end
  
    end
  
    def update
      if @usuario.update(usuario_params)
        redirect_to usuario_path, info: "Usuario editado"
      else
        render :edit
      end
    end
  
    def destroy
      @usuario.destroy
  
      redirect_to usuarios_path, danger: "Usuario Eliminado"
    end
  
    def edit
    end
  
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end
  
    def usuario_params
      params.require(:usuario).permit(:email,:password,:password_confirmation,:nombre)
    end
end
