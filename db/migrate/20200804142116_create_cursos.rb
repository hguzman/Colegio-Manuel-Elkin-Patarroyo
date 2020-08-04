class CreateCursos < ActiveRecord::Migration[6.0]
  def change
    create_table :cursos do |t|
      t.integer :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
