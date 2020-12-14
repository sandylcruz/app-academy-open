class ShortenedURL < ActiveRecord::Base
  validates :short_url, uniqueness: { case_sensitive: false }, presence: true
  validates :user, presence: true
  validates :long_url, presence: true

  belongs_to( 
    :submitter,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :visits,
    class_name: 'Visits',
    primary_key: :id,
    foreign_key: :shortened_url_id
  )

  has_many :visitors, through: :visits, source: :user
  

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

  def num_clicks
  end

  def num_uniques
  end

  def num_recent_uniques
  end
end