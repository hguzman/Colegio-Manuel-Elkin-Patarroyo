class ChangeTypeIdentificacion < ActiveRecord::Migration[6.0]
  def up
    change_table :users do |t|
      t.change :identificacion, :integer
    end
  end

  def down
    change_table :users do |t|
      t.change :identificacion, :string
    end
  end
end
