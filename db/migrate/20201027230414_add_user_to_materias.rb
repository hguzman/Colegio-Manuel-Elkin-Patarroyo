class AddUserToMaterias < ActiveRecord::Migration[6.0]
  def change
    add_reference :materias, :user, index: true
    add_foreign_key :materias, :users
  end
end
