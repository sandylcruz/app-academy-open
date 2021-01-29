class AddSubIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :sub_id, :integer, null: false
    add_index :posts, :sub_id
  end
end
