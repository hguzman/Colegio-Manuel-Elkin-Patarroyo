class CambioColumnaAnotacion < ActiveRecord::Migration[6.0]
  def self.up
     rename_column :anotaciones, :usuario_id, :user_id
   end

   def self.down

   end
end
