class AddContenidoToAnotaciones < ActiveRecord::Migration[6.0]
  def change
    add_column :anotaciones, :contenido, :string
  end
end
