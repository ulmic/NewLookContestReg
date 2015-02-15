class AddPatronymic < ActiveRecord::Migration
  def change
    add_column :users, :patronymic, :text
  end
end
