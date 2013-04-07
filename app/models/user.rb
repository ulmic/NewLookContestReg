class User < ActiveRecord::Base
  attr_accessible :birth_date, :building, :city, :district_id, :email, :first_name, :flat, :group, :home_phone, :house, :icq, :job, 
                   :last_name, :middle_name, :mobile_phone, :role, :school, :street, :twitter, :vkontakte, :filename, :image, :events, :honors, :media, :portfolio

  belongs_to :district
  has_many :public_works
  has_attached_file :portfolio

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :first_name, :presence => true,
                         :length => { :maximum => 20 }
  validates :middle_name, :presence => true,
                          :length => { :maximum => 20 }
  validates :last_name, :presence => true,
                          :length => { :maximum => 20 }
  validates :city, :presence => true
  validates :school, :presence => true
  validates :group, :presence => true
  validates :mobile_phone, :presence => true
  validates :email, :presence => true,
                    :format   => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
  validates :portfolio, :presence => true
end
