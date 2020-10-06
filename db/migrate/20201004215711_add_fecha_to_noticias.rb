class AddFechaToNoticias < ActiveRecord::Migration[6.0]
  def change
    add_column :noticias, :fecha, :date
  end
end
