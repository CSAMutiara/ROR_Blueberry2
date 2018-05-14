class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in!
  skip_before_action :set_current_user, only: [:create, :destroy]
  
  def create
    auth = request.env["omniauth.auth"]
    @user = User.where(:provider => auth["provider"], :uid => auth["id"]) ||
      User.create_with_omniauth(auth)
    session.user_id = @user[:uid]
    redirect_to reports_path
  end
  
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logged out successfully.'
    redirect_to root_path
  end
end