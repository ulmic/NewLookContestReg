class PublicWork < ActiveRecord::Base
  attr_accessible :annotation, :header, :header_coordinates, :nomination, :title, :user_id, :text, :video_link

  belongs_to :user
  validates :annotation, :presence => true
  validates :title, :presence => true
  validates :user_id, :presence => true
  validates :text, :presence => true
  validates :video_link, :presence => true,
                         :url => true
end
