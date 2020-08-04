class CreateSedes < ActiveRecord::Migration[6.0]
  def change
    create_table :sedes do |t|
      t.integer :codigo
      t.string :direccion

      t.timestamps
    end
  end
end
