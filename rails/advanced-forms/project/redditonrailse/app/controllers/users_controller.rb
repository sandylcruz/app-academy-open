class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      login_user!(@user)
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def new
    @user = User.new(user_params)
    render :new
  end

  def index
    @users = User.all
    render :index
  end

  def edit
    @user = User.find_by(id: params[:id])
    
    if @user.nil?
      render :new
    elsif @user.save
      redirect_to users_url(@user)
    else
    end
  end

  def update
    id = params[:id]

    @user = User.find_by(id: params[:d])

    if @user.nil?
      redirect_to users_url
    elsif @user.update_attributes(user_params)
      redirect to user_url(@user)
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    
    if @user
      render :show
    end
  end

  def destroy
  end


  private
  
  def user_params
    params.require(:user).permit(:username, :password_digest)
  end
end