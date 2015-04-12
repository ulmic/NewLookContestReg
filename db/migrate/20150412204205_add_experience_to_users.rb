class AddExperienceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :experience, :text
    add_column :users, :type, :text
    add_column :users, :activity_line, :text
  end
end
