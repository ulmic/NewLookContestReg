class PublicWork < ActiveRecord::Base
  belongs_to :user
  belongs_to :nomination

  validates :title, presence: true
  validates :nomination, presence: true
  validates :user_id, presence: true
  validates :text, presence: true
  validates :video_link, url: { allow_blank: true, allow_nil: true }
end
