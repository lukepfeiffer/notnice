class Video < ActiveRecord::Base
  validates_presence_of :url, :caption
  belongs_to :user
  has_many :comments
  default_scope order: 'created_at desc'

  def video_url
    url
  end
end
