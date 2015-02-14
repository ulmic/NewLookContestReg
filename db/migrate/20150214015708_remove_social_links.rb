class RemoveSocialLinks < ActiveRecord::Migration
  def up
    remove_column :users, :vkontakte
    remove_column :users, :twitter
  end

  def down
  end
end
