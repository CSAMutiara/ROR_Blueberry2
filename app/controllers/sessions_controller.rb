class SessionsController < ApplicationController
  # user shouldn't have to be logged in before logging in!
  skip_before_action :set_current_user, only: [:create, :destroy]
  
  def create
    begin
      @user = User.create_with_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id
      flash[:success] = "Welcome, #{@user.name}!"
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
    redirect_to reports_path
  end
  
  def destroy
    if @current_user
      session.delete(:user_id)
      flash[:notice] = 'Logged out successfully.'
    end
    redirect_to reports_path
  end
end