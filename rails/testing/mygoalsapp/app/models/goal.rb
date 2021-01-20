class Goal < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :private, presence: true
  validates :completed, presence: true

  belongs_to :author,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
end