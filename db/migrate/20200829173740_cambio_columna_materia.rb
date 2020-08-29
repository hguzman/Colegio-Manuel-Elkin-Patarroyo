class CambioColumnaMateria < ActiveRecord::Migration[6.0]
  def self.up
     rename_column :materias, :usuario_id, :user_id
   end

   def self.down

   end
end
