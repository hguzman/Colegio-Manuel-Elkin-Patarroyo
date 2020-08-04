class SedesController < ApplicationController
  before_action :authenticate_user!

  before_action :authenticate_user!
  before_action :set_sede, only: [:show, :edit, :update, :destroy]

  def index
    @sede = Sede.all
  end

  def show

  end

  def new
    @sede = Sede.new
  end

  def create
    @sede = Sede.new(sede_params)
    if @sede.save
      redirect_to sedes_path, success: "sede creada"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @sede.update(sede_params)
      redirect_to sedes_path, info: "sede editada"
    else
      render :edit
    end
  end

  def destroy
    @sede.destroy

    redirect_to sedes_path, danger: "Sede Eliminada"
  end

  private

  def set_sede
    @sede = Sede.find(params[:id])
  end

  def sede_params
    params.require(:sede).permit(:codigo,:direccion)
  end
end
