class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_credentials(username, password)
  end

  def logged_in?
  end

  def log_in_user!(user)
  end
end
