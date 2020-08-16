class CreateAnotaciones < ActiveRecord::Migration[6.0]
  def change
    create_table :anotaciones do |t|
      t.date :fecha
      t.string :titulo
      t.string :contenido
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
