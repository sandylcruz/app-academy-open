class Visit < ApplicationRecord
  validates :user, :shortened_url, presence: true

  belongs_to(
    :shortened_url,
    class_name: "ShortenedURL",
    primary_key: :id,
    foreign_key: :shortened_url_id
  )

  belongs_to(
    :user,
    class_name: "User",
    primary_key: :id,
    foreign_key: :user_id
  )

  def self.record_visit!(user, shortened_url)
    Visit.create!(user: user, shortened_url: shortened_url)
  end
end