class ApplicationController < ActionController::Base
  # before_action :require_current_user! unless: [:new, :create]
  helper_method :current_user

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !@current_user.nil?
  end

  def login_user!(user)
    @current_user = user
    session[:session_token] = user.session_token
  end

  def logout_user!
    current_user.try(:reset_session_token!)
    redirect_to new_session_url if current_user.nil?
  end
end
