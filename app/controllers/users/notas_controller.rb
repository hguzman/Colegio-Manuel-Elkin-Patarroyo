class Users::NotasController < ApplicationController

  before_action :set_user
  before_action :set_nota, only: [:show, :edit, :update, :destroy]

  def index
    @nota = Nota.all
  end

  def show
  end

  def new
    @nota = Nota.new
  end

  def create
    @nota = @user.notas.new(nota_params)
    if @nota.save
      flash.notice = "Nota creada"
      redirect_to user_nota_path(@user, @nota)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @nota.update(nota_params)
      flash.notice="Nota Actualizada"
      redirect_to  user_nota_path(@user, @nota)
    else
      render :edit
    end
  end

  def destroy
    @nota.destroy
    flash.alert="Nota Eliminada"
    redirect_to user_notas_path(@user)
  end

  private

  def set_nota
    @nota = @user.notas.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def nota_params
    params.require(:nota).permit(:logro,:nota)
  end

end
