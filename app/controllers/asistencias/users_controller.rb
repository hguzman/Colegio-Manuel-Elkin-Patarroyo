class Asistencias::UsersController < ApplicationController
  before_action :set_asistencia
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = @asistencia.users
    
  end

  private

  def set_asistencia
    @asistencia =Asistencia.find(params[:asistencia_id])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
