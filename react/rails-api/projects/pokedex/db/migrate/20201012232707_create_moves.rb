# frozen_string_literal: true

class CreateMoves < ActiveRecord::Migration[5.2] # rubocop:todo Style/Documentation
  def change
    create_table :moves do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :moves, :name, unique: true
  end
end
