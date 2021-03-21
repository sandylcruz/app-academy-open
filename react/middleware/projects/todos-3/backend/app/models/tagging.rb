class Tagging extends ApplicationRecord
  validates :todo_id, presence: true
  validates :tag_id, presence: true

  belongs_to :todos,
    class_name: 'Todo',
    foreign_key: :todo_id
    primary_key: :id

  belongs_to :tags,
    class_name: "Tag",
    foreign_key: :tag_id,
    primary_key: :id

end