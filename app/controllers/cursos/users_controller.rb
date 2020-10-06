class Cursos::UsersController < ApplicationController
  before_action :set_curso
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = @curso.users
    
  end

  private

  def set_curso
    @curso =Curso.find(params[:curso_id])
  end

  def set_user
    @user = User.find(params[:id])
  end

end
