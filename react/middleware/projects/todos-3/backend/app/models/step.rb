class Step < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :todo_id, presence: true
  validates :done, inclusion: { in: [true, false] }

  belongs_to :todo,
    class_name: "Todo",
    foreign_key: :todo_id,
    primary_key: :id
end