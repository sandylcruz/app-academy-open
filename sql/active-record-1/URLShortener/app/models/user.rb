class User < ApplicationRecord
  validates :email, uniqueness: { case_sensitive: false }, presence: true
end