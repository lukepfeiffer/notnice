class Video < ActiveRecord::Base
  validates_presence_of :url, :caption
  belongs_to :user
end
