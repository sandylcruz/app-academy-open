
class Api::SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token ##, except: [:create, :update, :destroy]

  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    
    if @user.nil?
      render json: ["Invalid username or password"], status: 401
    else
      login(@user)
      render "api/users/show"
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