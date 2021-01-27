class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def logged_in?
  end

  def logout_user!
  end

  def login_user!
  end

  def current_user
  end
end
