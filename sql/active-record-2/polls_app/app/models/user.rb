class User < ApplicationRecord
  validates :user_name, presence: true, uniqueness: true
  validates :name, presence: true
  validates :email, presence: true

  # has_many(
  #   :polls,
  #   class_name: 'Polls',
  #   foreign_key: ,
  #   primary_key: id
  # )

  # has_many(
  #   :responses
  #   class_name: 'Response'
  # )
end