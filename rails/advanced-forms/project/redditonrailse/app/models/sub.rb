class Sub < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :post_subs, 
    inverse_of: :sub, 
    dependent: :destroy,
    class_name: 'PostSub',
    foreign_key: :sub_id,
    primary_key: :id

  has_many :posts, through: :post_subs, source: :post

  belongs_to :moderator,
    class_name: 'User',
    foreign_key: :moderator_id,
    primary_key: :id
end