class AddModeratorId < ActiveRecord::Migration[5.2]
  def change
    remove_column :subs, :moderator, :string
    add_column :subs, :moderator_id, :integer
  end
end
