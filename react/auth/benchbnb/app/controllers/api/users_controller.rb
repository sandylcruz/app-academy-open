class Api::UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @user.create!(user_params)
    else
      @user.errors.full_messages
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password_digest, :session_token)
  end
end
