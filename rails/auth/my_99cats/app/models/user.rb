require 'bcrypt'

class User < ApplicationRecord
  attr_reader :password

  validates :username, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, presence: { message: 'Password cannot be blank' }
  validates :session_token, presence: true

  after_initialize do |session_token|

  end

  def reset_session_token!
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.find_by_credentials(user_name, password)
  end
end