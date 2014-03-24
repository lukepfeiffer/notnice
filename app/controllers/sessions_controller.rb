class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      sign_in(user)
      redirect_to notnice_path
    else
      flash.now.alert = 'Your email and password do not match'
      redirect_back_or_to log_in_path
    end
  end

  def destroy
    sign_out
    redirect_to notnice_path
  end
end
