class AddDatosToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :direccion, :string
    add_column :users, :celular, :string
    add_column :users, :correo, :string
  end
end
