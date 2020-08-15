class AddInfoToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :nombre, :string
    add_column :usuarios, :apellido, :string
    add_column :usuarios, :telefono, :string
    add_column :usuarios, :direccion, :string
  end
end
