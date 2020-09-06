class ChangeTypeInformacion < ActiveRecord::Migration[6.0]
  def up
    change_table :articulos do |t|
      t.change :informacion, :text
    end
  end

  def down
    change_table :articulos do |t|
      t.change :informacion, :string
    end
  end
end
