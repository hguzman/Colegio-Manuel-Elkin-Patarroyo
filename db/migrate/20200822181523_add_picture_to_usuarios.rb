class AddPictureToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :picture, :string
  end
end
