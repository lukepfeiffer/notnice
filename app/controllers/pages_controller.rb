class PagesController < ApplicationController
  def notnice
  end

  def log_in
    @user = User.new
  end

  def notnice
    @videos = Video.all
    @comments = Comment.all
  end

  def home
    @video = Video.last
  end
end
