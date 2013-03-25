class AddVideoLinkToPublicWork < ActiveRecord::Migration
  def change
    add_column :public_works, :video_link, :string
  end
end
