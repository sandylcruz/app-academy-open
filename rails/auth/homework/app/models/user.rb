class User < ApplicationRecord
  before_validation :ensure_session_token

  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, allow_nil: true, length: { minimum: 6 }
  validates :session_token, presence: true
  
  def create
    @user = User.new(params[:user])

    ensure_session_token

    if @user.save
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def self.find_by_credentials(username, password)
    User.find_by(username, password)
  end

  def self.generate_session_token
  end

  def reset_session_token!
  end

  def ensure_session_token
  end

  def password=
  end
end
