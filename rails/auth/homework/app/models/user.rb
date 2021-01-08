require 'securerandom'
require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  before_validation :ensure_session_token

  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, allow_nil: true, length: { minimum: 6 }
  validates :session_token, presence: true, uniqueness: true

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    password = BCrypt::Password.create('password')

    return user if user.password_digest == BCrypt::Password.create('password')
    # return user if user.find_by_credentials()
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

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end


end
