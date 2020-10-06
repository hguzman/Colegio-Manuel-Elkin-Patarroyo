class RolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  def index
    authorize Role
   
    @roles = Role.all


  end

  def show
    authorize @role

  end

  def new
    
    @role = Role.new
    authorize @role

    

  end

  def create
    @role= Role.new(role_params)
    if @role.save
      redirect_to roles_path
      flash.notice= 'Rol creado'
    else
      render :new
    end
  end

  def edit
    authorize @role


  end

  def update
    if @role.update(role_params)
      redirect_to roles_path
      flash.notice= 'Rol actualizado'
    else
      render :edit
    end
  end

  def destroy
    @role.destroy
    redirect_to roles_path
    flash.alert= 'Rol eliminado'
  end

  private

  def set_role
    @role =Role.find(params[:id])
  end

  def role_params
    params.require(:role).permit(:name)
  end
end
