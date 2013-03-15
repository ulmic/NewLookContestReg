class PublicWork < ActiveRecord::Base
  attr_accessible :annotation, :header, :header_coordinates, :nomination, :title, :user_id

  belongs_to :user

end
