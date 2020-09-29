class AddAsistenciaToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :asistencia, foreign_key: true
  end
end
