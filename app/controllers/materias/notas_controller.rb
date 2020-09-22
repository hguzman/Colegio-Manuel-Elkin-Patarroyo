class Materias::NotasController < ApplicationController
  before_action :set_materia
  before_action :set_nota, only: [:show, :edit, :update, :destroy]

  def index
    @notas = @materia.notas
    respond_to do |format|
      format.html
      format.pdf do
        render pdf:"Documento",
        template: "materias/notas/pdf.html.erb"
      
      end
     
    end

  end

  def respond_html_and_csv
    
  end

  def show

  end

  def new
    @nota = Nota.new
  end

  def create
    @nota = @materia.notas.new(nota_params)
    if @nota.save
      flash.notice = "Nota creada"
      redirect_to materia_nota_path(@materia, @nota)
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @nota.update(nota_params)
      flash.notice = "Nota Actualizada"
      redirect_to materia_notas_path(@materia,@nota)
    else
      flash.alert = "Error al actualizar"
      render edit
    end
  end

  def destroy
    @nota.destroy
    flash.alert = "Nota eliminada"
    redirect_to materia_notas_path(@materia)
  end

  private

  def set_materia
    @materia = Materia.find(params[:materia_id])
  end

  def set_nota
    @nota = @materia.notas.find(params[:id])
  end

  def nota_params
    params.require(:nota).permit(:logro,:nota)
  end
end
