require 'bcrypt'
require 'securerandom'

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, presence: { message: 'password cannot be blank' }
  validates :session_token, presence: true, uniqueness: true

  after_initialize :ensure_session_token

  attr_reader :password

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.session_token.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = Bcrypt::Password.create(password)
  end

  def find_by_credentials(email, password)
    user = User.find_by(email: email)

    return user if user && user.is_password?(password)
    nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  private

  def ensure_session_token
    self.session_token ||= self.generate_session_token
  end
end