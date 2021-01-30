class Comment < ApplicationRecord
  validates :body, null: false
  validates :user_id, null: false
  validates :post_id, null: false
  validates :parent_comment_id, null: false

  belongs_to :author,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :post, inverse_of: :comments

  has_many :child_comments,
    class_name: 'Comment',
    foreign_key: :parent_comment_id,
    primary_key: :id

  belongs_to :parent_comment,
    class_name: 'Comment',
    foreign_key: :parent_comment_id,
    primary_key: :id,
    optional: true
end