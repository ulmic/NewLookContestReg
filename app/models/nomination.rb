class Nomination < ActiveRecord::Base
  attr_accessible :describe, :title

  has_many :public_works
end
