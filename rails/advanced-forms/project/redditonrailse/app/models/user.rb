class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :session_token, presence: true

  attr_reader :password

  before_action :ensure_session_token

  def find_by_credentials(username, password)
    user = User.find_by(username: username)

    if user
      password_digest = BCrypt::Password.new(password)

      if user.password_digest.is_password?(password)
        
      end
    else
      render user.errors.full_messages
    end
  end

  def is_password?(password)
  end

  def password=(password)
    password_digest = BCrypt::Password.create(password)
  end

  def ensure_session_token
    self.generate_session_token ||= session_token
  end

  def reset_session_token!
    SecureRandom::urlsafe_base64(16)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

end