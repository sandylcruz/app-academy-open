# frozen_string_literal: true

class RemoveColumnPokemon < ActiveRecord::Migration[5.2] # rubocop:todo Style/Documentation
  def change
    remove_column :pokemons, :moves # rubocop:todo Rails/ReversibleMigration
  end
end
