class CreateTareas < ActiveRecord::Migration[6.0]
  def change
    create_table :tareas do |t|
      t.string :tarea
      t.text :solucion
      t.string :adjunto

      t.timestamps
    end
  end
end
