class SessionsController < ApplicationController
  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if user.nil?
      flash.now[:errors] = { message: 'Incorrect username and/or password'}
      render :new
    else
      login_user!(user)
      redirect_to user_url(user)
    end
  end

  def current_user
  end

  def logged_n?
  end

  def log_in_user!(user)
  end


end