class Users::MateriasController < ApplicationController
  before_action :set_user
  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  def index
    authorize Materia
    @materias = @user.materias
  end

  def show
  end

  def edit
  end

  def new
    @materia = @user.materias.new
    authorize @materia
  end

  def create
    @materia = @user.materias.new(materia_params)
    if @materia.save
      flash.notice = "Materia creada"
      redirect_to user_materia_path(@user, @materia)
    else
      render :new
    end
  end

  def update
    if @materia.update(materia_params)
      flash.notice="Materia Actualizada"
      redirect_to  user_materias_path(@user, @materia)
    else
      render :edit
    end
  end

  def destroy
    @materia.destroy
    flash.alert="Materia Eliminada"
    redirect_to user_materias_path(@user)
  end

  private

  def set_materia
    @materia = @user.materias.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def materia_params
    params.require(:materia).permit(:codigo,:nombre)
  end

end
