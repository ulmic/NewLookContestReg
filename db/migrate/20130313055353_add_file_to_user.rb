class AddFileToUser < ActiveRecord::Migration
  def change
  end

  def self.up
    add_column :users, :image_file_name, :string
    add_column :users, :image_content_type, :string
    add_column :users, :image_file_size, :integer
  end

  def self.down
    remove_column :users, :image_file_name
    remove_column :users, :image_content_type
    remove_column :users, :image_file_size
  end
end
