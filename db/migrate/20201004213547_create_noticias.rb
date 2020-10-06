class CreateNoticias < ActiveRecord::Migration[6.0]
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.text :informacion

      t.timestamps
    end
  end
end
