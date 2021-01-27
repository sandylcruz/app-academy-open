class SessionsController < ApplicationController 
  def create
    user = find_by_credentials(
      params[:user][:username], 
      params[:user][:password]
    )

    if user.nil?
      flash.now[:errors] = { message: 'Incorrect username/password' }
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
    redirect_to subs_url
  end
end