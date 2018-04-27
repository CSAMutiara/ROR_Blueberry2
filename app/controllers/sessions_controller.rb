class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in!
  skip_before_action :set_current_user, only: [:create, :destroy]
  def create
    auth=request.env["omniauth.auth"]
    user=Activitygoer.where(:provider => auth["provider"], :uid => auth["uid"]) ||
      Activitygoer.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to activities_path
  end
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logged out successfully.'
    redirect_to activities_path
  end
end