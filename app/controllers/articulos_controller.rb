class ArticulosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]


    def index
      @articulos=Articulo.paginate(page: params[:page], per_page: 4)
    end


    def show
    end

    def new
      @articulo=Articulo.new
    end

    def create
      @articulo = Articulo.new(articulo_params)
      if @articulo.save
        redirect_to articulos_path
        flash.notice = 'Articulo creado'
      else
        render :new
      end

    end

    def update
      if @articulo.update(articulo_params)
        redirect_to articulo_path
        flash.notice="Articulo Editado"
      else
        render :edit
      end
    end

    def destroy
      @articulo.destroy

      redirect_to articulos_path
      flash.alert="Articulo ELiminado"
    end

    def edit
    end

    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    def articulo_params
      params.require(:articulo).permit(:titulo,:descripcion,:informacion,:picture)
    end
end
