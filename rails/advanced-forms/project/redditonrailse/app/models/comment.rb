class Comment < ApplicationRecord
  validates :body, null: false
  validates :user_id, null: false
  validates :post_id, null: false
  validates :parent_comment_id, null: false

  belongs_to :author,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :post,
    class_name: 'Post',
    foreign_key: :post_id,
    primary_key: :id
end