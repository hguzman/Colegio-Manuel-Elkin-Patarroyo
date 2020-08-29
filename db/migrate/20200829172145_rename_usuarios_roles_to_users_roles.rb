class RenameUsuariosRolesToUsersRoles < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :usuarios_roles, :users_roles
  end

  def self.down
    rename_table :users_roles, :usuarios_roles
  end
end
