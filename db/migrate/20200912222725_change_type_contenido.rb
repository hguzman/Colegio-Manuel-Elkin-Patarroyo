class ChangeTypeContenido < ActiveRecord::Migration[6.0]
  def up
    change_table :anotaciones do |t|
      t.change :contenido, :text
    end
  end

  def down
    change_table :anotaciones do |t|
      t.change :contenido, :string
    end
  end
end
