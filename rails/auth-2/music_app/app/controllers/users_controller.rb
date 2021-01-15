class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      log_in_user!(@user)
      render plain: "you created a user"
    else
      render :new
    end
  end

  def new
    @user = User.new
    render :new
  end

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(email: params[:email])
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :password)
  end

end