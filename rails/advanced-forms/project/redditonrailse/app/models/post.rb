class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :author,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

  has_many :post_subs, 
    inverse_of: :post, 
    dependent: :destroy,
    class_name: 'PostSub',
    foreign_key: :post_id,
    primary_key: :id

  has_many :subs, through: :post_subs, source: :sub
  has_many :comments
end