class CreateArticulos < ActiveRecord::Migration[6.0]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.string :descripcion
      t.string :informacion

      t.timestamps
    end
  end
end
