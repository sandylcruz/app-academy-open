class ShortenedURL < ActiveRecord::Base
  validates :short_url, uniqueness: { case_sensitive: false }, presence: true
  validates :user, presence: true
  validates :long_url, presence: true

  belongs_to( :user,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
  )
end