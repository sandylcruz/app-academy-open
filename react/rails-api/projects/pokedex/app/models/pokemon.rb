# frozen_string_literal: true

class Pokemon < ApplicationRecord # rubocop:todo Style/Documentation
  TYPES = %w[
    fire
    electric
    normal
    ghost
    psychic
    water
    bug
    dragon
    grass
    fighting
    ice
    flying
    poison
    ground
    rock
    steel
  ].sort.freeze

  validates :attack, :defense, :image_url, :name, :poke_type, presence: true
  validates :name, uniqueness: true # rubocop:todo Rails/UniqueValidationWithoutIndex
  validates :attack, :defense, numericality: true
  validates :poke_type, inclusion: { in: TYPES }

  has_many :items # rubocop:todo Rails/HasManyOrHasOneDependent

  has_many :poke_moves # rubocop:todo Rails/HasManyOrHasOneDependent

  has_many :moves,
           through: :poke_moves,
           source: :move
end
