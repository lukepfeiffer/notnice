class PagesController < ApplicationController
  def notnice
  end

  def log_in
    @user = User.new
  end

end
