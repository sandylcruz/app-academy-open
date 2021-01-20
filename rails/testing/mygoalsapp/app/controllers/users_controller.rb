class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_url(@user)
    else
      render :new
      flash[:errors] = "User not created"
    end
  end

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show if @user
  end

  def edit
    @user = User.find_by(id: params[:id])
    render :edit
  end

  def update
    id = params[:id]
    @user = User.find_by(id: params[:id])
    
    if @user.nil?
      render :new
    elsif @user.update_attributes(user_params)
      redirect_to user_url(@user)
    else
      render @user.errors.full_messages
      redirect_to users_url
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :password)
  end
end