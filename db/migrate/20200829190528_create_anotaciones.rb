class CreateAnotaciones < ActiveRecord::Migration[6.0]
  def change
    create_table :anotaciones do |t|
      t.date :fecha
      t.string :titulo
      t.text :contenido
      t.references :user, null: false, foreign_key: true
    end
  end
end
