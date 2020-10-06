class AddMateriaToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :materia, foreign_key: true
  end
end
