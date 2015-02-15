class RemoveMiddleName < ActiveRecord::Migration
  def change
    remove_column :users, :middle_name
  end
end
