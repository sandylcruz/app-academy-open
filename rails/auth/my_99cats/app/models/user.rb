require 'bcrypt'

class User < ApplicationRecord
  validates: :user_name, presence: true
  validates: :password_digest, presence: true
  validates: :session_token, presence: true

  after_initialize do |session_token|

  end

  def reset_session_token!
  end

  def password=(password)
  end

  def is_password?(password)
  end

  def self.find_by_credentials(user_name, password)
  end
end