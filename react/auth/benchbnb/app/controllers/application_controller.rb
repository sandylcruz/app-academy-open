class ApplicationController < ActionController::Base
  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def login(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
    @current_user = user
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil;
    @current_user = nil
  end

  def require_log_in
    unless @current_user
      render json: ["Not logged in"], status: 401
    end
  end
end
