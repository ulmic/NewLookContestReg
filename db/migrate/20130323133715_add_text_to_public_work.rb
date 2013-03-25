class AddTextToPublicWork < ActiveRecord::Migration
  def change
    add_column :public_works, :text, :string
  end
end
