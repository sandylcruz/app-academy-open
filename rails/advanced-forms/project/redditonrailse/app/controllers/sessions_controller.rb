class SessionsController < ApplicationController 
  def create
    user = User.find_by_credentials(
      params[:user][:username], 
      params[:user][:password]
    )

    if user.nil?
      flash[:alert] = 'Error: Incorrect username/password'
      render :new
    else
      login_user!(user)
      redirect_to subs_url
    end
  end

  def new
    render :new
  end

  def destroy
    logout_user!
  end
end