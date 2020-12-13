class User < ApplicationRecord
  validates :email, uniqueness: { case_sensitive: false }, presence: true

  has_many(
    :shortened_urls,
    class_name: 'ShortenedURL',
    primary_key: :id,
    foreign_key: :user_id
  )
end