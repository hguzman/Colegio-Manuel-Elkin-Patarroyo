class Users::MateriasController < ApplicationController
  before_action :set_user
  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  def index
    @materias = @user.materias
    
  end

  def show
  end


  def set_user
    @user = User.find(params[:user_id])
  end


  def set_materia
    @materia = @user.materias.find(params[:id])
  end
end
