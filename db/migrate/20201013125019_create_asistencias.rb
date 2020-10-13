class CreateAsistencias < ActiveRecord::Migration[6.0]
  def change
    create_table :asistencias do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
