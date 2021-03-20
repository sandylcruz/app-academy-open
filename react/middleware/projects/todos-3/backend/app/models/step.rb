class Step < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :done, inclusion: { in: [true, false] }

end