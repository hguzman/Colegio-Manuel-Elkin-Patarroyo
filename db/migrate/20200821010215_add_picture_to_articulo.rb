class AddPictureToArticulo < ActiveRecord::Migration[6.0]
  def change
    add_column :articulos, :picture, :string
  end
end
