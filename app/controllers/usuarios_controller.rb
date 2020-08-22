class UsuariosController < ApplicationController

    before_action :set_usuario, only: [:show, :edit, :update, :destroy]


    def index
      @usuarios=Usuario.all
    end

    def indexStudent
      @usuarios=Usuario.all
    end 

    def indexDocente
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
        redirect_to cursos_path
        flash.notice= "Usuario creado"
      else
        render :new
      end
  
    end
  
    def update
      if @usuario.update(usuario_params)
        redirect_to usuario_path
        flash.notice="Usuario Editado"
      else
        render :edit
      end
    end
  
    def destroy
      @usuario.destroy
  
      redirect_to usuarios_path
      flash.alert="Usuario ELiminado"
    end
  
    def edit
    end
  
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end
  
    def usuario_params
      params.require(:usuario).permit(:email,:password,:password_confirmation,:nombre,:apellido,:direccion,:telefono,:picture)
    end
end
