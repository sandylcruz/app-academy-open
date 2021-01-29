class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :author,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :sub,
    class_name: 'Sub',
    foreign_key: :sub_id,
    primary_key: :id
end