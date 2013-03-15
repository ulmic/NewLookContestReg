class UserAddFilename < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    add_column :users, :filename, :string
    add_column :users, :image, :string
  end
end
