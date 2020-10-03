class Materias::NotasController < ApplicationController
  before_action :set_materia
  before_action :set_nota, only: [:show, :edit, :update, :destroy]

  def index
    @notas = @materia.notas

    respond_to do |format|
      format.html do
        @promedio_estudiante = @materia.notas.average(:nota) || 0
        # @suma_estudiante = @materia.notas.sum(:nota) || 0
      end
      format.pdf do
        render pdf:"Documento",
        template: "materias/notas/pdf.html.erb"

      end



    end


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
      flash.notice = "Nota actualizada"
      redirect_to materia_nota_path(@materia,@nota)
    else

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
