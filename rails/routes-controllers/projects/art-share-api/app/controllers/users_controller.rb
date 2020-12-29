class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by(id: params.require(:id))
    
    if user
      render json: user
    else
      render json: { error: "not_found" }, status: :not_found
    end
  end

  def update
    user = User.find_by(id: params.require(:id))
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by(id: params.require(:id))

    if user.nil? 
      render json: { error: "not_found" }, status: :not_found
    elsif user.destroy
      head :no_content
    else
      render json: user.errors.full_messages, status: :bad_request
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end