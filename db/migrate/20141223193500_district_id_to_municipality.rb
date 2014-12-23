class DistrictIdToMunicipality < ActiveRecord::Migration
  def up
    remove_column :users, :district_id
    add_column :users, :municipality, :text
  end

  def down
  end
end
