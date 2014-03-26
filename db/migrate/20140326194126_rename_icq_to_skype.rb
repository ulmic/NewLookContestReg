class RenameIcqToSkype < ActiveRecord::Migration
  def up
    remove_column :users, :icq
    add_column :users, :skype, :text
  end
end
