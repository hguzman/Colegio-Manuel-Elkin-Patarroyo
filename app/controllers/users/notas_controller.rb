class Users::NotasController < ApplicationController
  before_action :set_user
  before_action :set_nota, only: [:show, :edit, :update, :destroy]

  def index
    @notas = @user.notas
    @grafica_notas = Nota.group_by_day(:created_at).count
    respond_html_and_csv
  end

  def respond_html_and_csv
    respond_to do |format|
      format.html
      format.xlsx do
        response.headers['Content-Disposition'] = 'attachment; filename="notas.xlsx"'
      end
    end
  end

  def show
  end

  def new
    @nota = Nota.new
  end

  def create
    @nota = @user.notas.new(nota_params)
    if @nota.save
      flash[:success] = "Nota creada"
      redirect_to user_notas_path(@user,@notas)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @nota.update(nota_params)
      flash.notice = "Nota actualizada"
      redirect_to edit_user_nota_path(@user,@nota)
    else
      render edit
    end
  end

  def destroy
    @nota.destroy
    flash.alert = "Nota eliminada"
    redirect_to user_notas_path(@user)
  end

  private
  
  def set_user
    @user = User.find(params[:user_id])
  end


  def set_nota
    @nota = @user.notas.find(params[:id])
  end

  def nota_params
    params.require(:nota).permit(:logro,:nota)
  end
end
