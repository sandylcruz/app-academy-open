class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :author,
    class_name: 'Users',
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :sub
end