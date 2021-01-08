class User < ApplicationRecord
  validates :username, presence: true, unique: true
  validates :password, presence: true
  validates :session_token, presence: true
end
