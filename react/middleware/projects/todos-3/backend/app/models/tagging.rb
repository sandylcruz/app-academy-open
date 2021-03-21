class Tagging < ApplicationRecord
  validates :todo_id, presence: true
  validates :tag_id, presence: true

  belongs_to :todo,
    class_name: 'Todo',
    foreign_key: :todo_id,
    primary_key: :id

  belongs_to :tag,
    class_name: "Tag",
    foreign_key: :tag_id,
    primary_key: :id

end