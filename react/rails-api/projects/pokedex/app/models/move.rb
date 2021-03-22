# frozen_string_literal: true

class Move < ApplicationRecord
  validates :name, null: false, uniqueness: true
end
