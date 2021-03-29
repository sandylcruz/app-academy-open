class ApplicationController < ActionController::Base
  def login!(user)
    session[:session_token] = user.session_token
  end

  def logout!
    current_user.reset_session_token!
  end

  def current_user
    return nil unless session[:session_token]

    @current_user ||= User.find_by_session_token(session[:session_token])
  end
end
