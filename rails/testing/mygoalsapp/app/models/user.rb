class User < ApplicationRecord
  validates :session_token, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, presence: true
  validates :email, presence: true, uniqueness: true

  attr_reader :password
  
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