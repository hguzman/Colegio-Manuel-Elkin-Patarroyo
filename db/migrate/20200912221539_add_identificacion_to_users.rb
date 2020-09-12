class AddIdentificacionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :identificacion, :string
  end
end
