class User < ActiveRecord::Base
  attr_accessible :birth_date, :building, :city, :district, :email, :first_name, :flat, :group, :home_phone, :house, :icq, :job, :last_name, 
                  :middle_name, :mobile_phone, :role, :school, :street, :twitter, :vkontakte, :filename, :image, :events, :honors, :media

  has_one :district
  has_many :public_works

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first_name, :presence => true,
                         :length => { :maximum => 20 }
  validates :email, :presence => true,
                    :format   => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
end
