require 'bcrypt'
require 'securerandom'

class User < ApplicationRecord
  attr_reader :password

  validates :username, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, presence: { message: 'Password cannot be blank' }
  validates :session_token, presence: true

  after_initialize :ensure_session_token

  has_many(
    :cat,
    foreign_key: :user_id,
    primary_key: :id
  )

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)

    return user if user && user.is_password?(password)
    nil
  end

  private

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end
end