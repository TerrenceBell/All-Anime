class AddCollumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :favorite_anime, :string
    add_column :users, :name, :string
  end
end
