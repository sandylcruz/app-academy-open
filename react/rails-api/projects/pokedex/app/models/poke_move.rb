# frozen_string_literal: true

class PokeMove < ApplicationRecord
  belongs_to :pokemon

  belongs_to :move
end
