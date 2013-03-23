class PublicWork < ActiveRecord::Base
  attr_accessible :annotation, :header, :header_coordinates, :nomination, :title, :user_id, :text, :video_link

  belongs_to :user

end
