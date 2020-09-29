class Materias::NotasController < ApplicationController
  before_action :set_materia
  before_action :set_nota, only: [:show, :edit, :update, :destroy]

  def index
    @notas = @materia.notas
<<<<<<< HEAD
=======
    @promedio_estudiante = promedio_notas
    respond_html_and_csv

  end

  def respond_html_and_csv
>>>>>>> 6ec8bc69651d4332db7df1197b098246e9167d48
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
      flash[:success] = "Nota creada"
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
      redirect_to materia_nota_path(@materia,@nota)
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

  def promedio_notas
    nota = @materia.notas.empty?
    
    if nota

    elsif

      promedio_nota = 0

      Nota.all.each do |n|
        promedio_nota += n.nota
      end

      return promedio_nota/Nota.all.length
    end
  end
end
