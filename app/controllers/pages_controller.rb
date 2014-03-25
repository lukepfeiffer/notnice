class PagesController < ApplicationController
  def notnice
  end

  def log_in
    @user = User.new
  end

  def notnice
    @videos = Video.all
  end

end
