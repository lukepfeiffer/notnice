class PagesController < ApplicationController
  def notnice
  end

  def log_in
    @user = User.new
  end

  def notnice
    @videos = Video.all
<<<<<<< HEAD
    @comments = Comment.all
=======
    @comment = Comment.new
>>>>>>> parent of 810d73a... Videos paginate
  end

  def home
    @video = Video.last
  end
end
