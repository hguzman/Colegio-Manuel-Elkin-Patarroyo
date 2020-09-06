class ChangeTypeDescripcion < ActiveRecord::Migration[6.0]
  def up
    change_table :articulos do |t|
      t.change :descripcion, :text
    end
  end

  def down
    change_table :articulos do |t|
      t.change :descripcion, :string
    end
  end
end
