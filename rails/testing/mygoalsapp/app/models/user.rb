class User < ApplicationRecord
  def self.generate_session_token
  end

  def reset_session_token!
  end

  def password=(password)
  end

  def is_password?(password)
  end

  def self.find_by_credentials(email, password)
  end

  private

  def ensure_session_token
  end
  
end