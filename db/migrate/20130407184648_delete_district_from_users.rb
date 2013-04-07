class DeleteDistrictFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :district
    add_column :users, :district_id, :integer
  end

  def down
  end
end
