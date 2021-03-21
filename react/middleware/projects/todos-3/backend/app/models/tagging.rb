class Tagging < ApplicationRecord
  belongs_to :todo,
    class_name: 'Todo',
    foreign_key: :todo_id,
    primary_key: :id

  belongs_to :tag,
    class_name: "Tag",
    foreign_key: :tag_id,
    primary_key: :id
end