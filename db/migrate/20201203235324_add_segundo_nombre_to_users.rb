class AddSegundoNombreToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :segundo_nombre, :string
    add_column :users, :segundo_apellido, :string
  end
end
