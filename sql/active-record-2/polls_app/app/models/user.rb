class Users < ApplicationRecord
  validates :user_name, presence: true, uniqueness: true
  validates :name, presence: true
  validates :email, presence: true

  has_many(
    :authored_polls,
    class_name: 'Polls',
    foreign_key: :author_id,
    primary_key: id
  )

  has_many(
    :responses
    class_name: 'Responses',
    foreign_key: :respondent,
    primary_key: :id
  )
end