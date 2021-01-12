class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if user.nil?
      render json: 'Credentials were wrong'
      render :new
    else
      login!(user)
      redirect_to user_url(user)
    end
  end

  def destroy
    unless current_user.nil?
      current_user.reset_session_token
      session[:session_token] = nil
      redirect_to new_session_url
    end
  end

end