class AddUserToTarea < ActiveRecord::Migration[6.0]
  def change
    add_reference :tareas, :user, index: true
    add_foreign_key :tareas, :users
  end
end
