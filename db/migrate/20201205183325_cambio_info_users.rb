class CambioInfoUsers < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :users, :identifiacion, :identificacion
    rename_column :users, :nombres, :primer_nombre
    rename_column :users, :apellidos, :primer_apellido
  end

  def self.down

  end
end
