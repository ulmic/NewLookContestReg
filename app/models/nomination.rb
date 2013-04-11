class Nomination < ActiveRecord::Base
  attr_accessible :describe, :title

  has_many :user
end
