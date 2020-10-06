class AddCursoToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :curso, foreign_key: true
  end
end
