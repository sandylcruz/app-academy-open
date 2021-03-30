class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    
    if @user.nil?
      render json: ["Invalid username or password"], status: 401
    else
      login(@user)
      render json: "logged in"
    end
  end

  def destroy
    @user = current_user

    if @user
      logout
      return {}
    else
      render json: "No user found", status: 400
    end
  end
end