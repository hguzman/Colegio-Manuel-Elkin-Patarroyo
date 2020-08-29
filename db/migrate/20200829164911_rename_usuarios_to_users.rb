class RenameUsuariosToUsers < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :usuarios, :users
  end

  def self.down
    rename_table :users, :usuarios
  end
end
