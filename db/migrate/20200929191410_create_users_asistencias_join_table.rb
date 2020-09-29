class CreateUsersAsistenciasJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :asistencias do |t|
      t.index :user_id
      t.index :asistencia_id
    end
  end
end
