class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user.nil?
      flash.now[:errors] = ["Invalid username or password"]
      render :new
    else
      login!(@user)
    end
  end

  def destroy
    if current_user
      logout!
    else
    end
  end
end