class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :middle_name
      t.text :last_name
      t.integer :district
      t.date :birth_date
      t.text :school
      t.text :group
      t.text :job
      t.text :role
      t.text :city
      t.text :street
      t.text :house
      t.text :building
      t.text :flat
      t.text :mobile_phone
      t.text :home_phone
      t.text :icq
      t.text :email
      t.text :vkontakte
      t.text :twitter
      t.string :confirm_state

      t.timestamps
    end
  end
end
