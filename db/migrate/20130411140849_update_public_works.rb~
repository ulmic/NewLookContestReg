class UpdatePublicWorks < ActiveRecord::Migration
  def up
    remove_column :public_works, :nomination
    add_column :public_works, :nomination_id, :integer
  end

  def down
  end
end
