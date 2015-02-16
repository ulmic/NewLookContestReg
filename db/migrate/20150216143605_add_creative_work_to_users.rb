class AddCreativeWorkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :creative_work, :text
    add_column :users, :url_creative_work, :text
  end
end
