class Video < ActiveRecord::Base
  validates_presence_of :url, :caption
end
