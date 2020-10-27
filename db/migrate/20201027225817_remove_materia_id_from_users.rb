class RemoveMateriaIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :materia_id, :integer
  end
end
