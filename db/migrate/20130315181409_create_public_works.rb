class CreatePublicWorks < ActiveRecord::Migration
  def change
    create_table :public_works do |t|
      t.string :header
      t.string :header_coordinates
      t.string :nomination
      t.string :title
      t.string :annotation
      t.integer :user_id

      t.timestamps
    end
  end
end
