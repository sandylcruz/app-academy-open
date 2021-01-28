class Sub < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :moderator,
    class_name: 'User',
    foreign_key: :moderator_id,
    primary_key: :id
end