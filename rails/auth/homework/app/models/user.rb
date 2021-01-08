require 'securerandom'

class User < ApplicationRecord
  before_validation :ensure_session_token

  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, allow_nil: true, length: { minimum: 6 }
  validates :session_token, presence: true, uniqueness: true

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
  end

  def self.generate_session_token
    @session_token = SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.session_token.save!
    self.session_token
  end

  def ensure_session_token
  end

  def password=(arg)
    @password = arg
  end


end
