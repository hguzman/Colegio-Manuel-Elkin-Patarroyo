class AddCursoToMaterias < ActiveRecord::Migration[6.0]
  def change
    add_reference :materias, :curso, index: true
    add_foreign_key :materias, :cursos
  end
end
