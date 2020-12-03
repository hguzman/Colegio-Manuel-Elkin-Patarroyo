class AddMateriaToNotas < ActiveRecord::Migration[6.0]
  def change
    add_reference :notas, :materia, foreign_key: true
  end
end
