class RemoveSubId < ActiveRecord::Migration[5.2]
  def change
    remove_index :posts, name: "index_posts_on_sub_id"
    remove_column :posts, :sub_id
  end
end
