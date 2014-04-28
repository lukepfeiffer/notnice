class PagesController < ApplicationController
  def log_in
    @user = User.new
  end

  def notnice
    @videos = Video.all #.paginate(page: params[:page], per_page: 5)
    @comments = Comment.all
    @comment = Comment.new
  end

  def home
    @video = Video.last
  end
end
