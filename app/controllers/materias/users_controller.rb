class Materias::UsersController < ApplicationController
  before_action :set_materia
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  private

  def set_materia
    @materia = Materia.find(params[:materia_id])
  end

  def set_user
    @user = User.find(params[:id])
  end

end
