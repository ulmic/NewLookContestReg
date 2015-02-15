class AddPosition < ActiveRecord::Migration
  def change
    add_column :users, :position, :text
  end
end
