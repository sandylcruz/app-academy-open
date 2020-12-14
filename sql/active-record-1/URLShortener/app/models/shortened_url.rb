class ShortenedURL < ActiveRecord::Base
  validates :short_url, uniqueness: { case_sensitive: false }, presence: true
  validates :user, presence: true
  validates :long_url, presence: true

  belongs_to( :user,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
  )

  def self.random_code
    random_code = SecureRandom.urlsafe_base64

    while ShortenedURL.exists?(short_url: random_code)
      random_code = SecureRandom.urlsafe_base64
    end
    
    random_code
  end

  def self.create_shortened_url(user, long_url)
    random_code = self.random_code
    ShortenedURL.create!(long_url: long_url, user: user, short_url: random_code)
  end
end