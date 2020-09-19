class CreateNotas < ActiveRecord::Migration[6.0]
  def change
    create_table :notas do |t|
      t.string :logro
      t.decimal :nota
      t.references :materia, null: false, foreign_key: true

      t.timestamps
    end
  end
end
