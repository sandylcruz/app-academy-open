class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      render plain: "has been saved"
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
    @user = User.find_by(id: params[:id])
    render :show if @user
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :password)
  end

end