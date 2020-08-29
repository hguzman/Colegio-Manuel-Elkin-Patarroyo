class CambioColumna < ActiveRecord::Migration[6.0]
  def self.up
     rename_column :users_roles, :usuario_id, :user_id
   end

   def self.down

   end
end
