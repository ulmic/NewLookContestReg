class Admin < ActiveRecord::Base
  validates :login, presence: true, length: { minimum: 3, maximum: 8 }
  validates :password, presence: true, length: { minimum: 3, maximum: 16 }
end
