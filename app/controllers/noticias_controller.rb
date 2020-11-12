class NoticiasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_noticia, only: [:show, :edit, :update, :destroy]


    def index
      authorize Noticia
      @noticias = Noticia.order(created_at: :desc).paginate(page: params[:page], per_page: 6)
    end


    def show
      authorize @noticia
    end

    def new
      @noticia=Noticia.new
      authorize @noticia
    end

    def create
      @noticia = Noticia.new(noticia_params)
      if @noticia.save
        redirect_to noticias_path
        flash[:success] = 'Noticia creada'
        # UserMailer.noticia_mailer(@user, @noticia).deliver_now
      else
        render :new
      end

    end

    def update
      if @noticia.update(noticia_params)
        redirect_to noticias_path
        flash[:notice]="Noticia editada"
      else
        render :edit
      end
    end

    def destroy
      @noticia.destroy
      redirect_to noticias_path
      flash[:alert] ="Noticia eliminada"
    end

    def edit
      authorize @noticia
    end

    def set_noticia
      @noticia = Noticia.find(params[:id])
    end

    def noticia_params
      params.require(:noticia).permit(:titulo,:descripcion,:informacion,:fecha)
    end
end
