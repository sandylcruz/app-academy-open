class AddCommentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.integer :user_id, null: false
      t.integer :parent_comment_id, null: false
      t.integer :post_id, null: false
    end
    
    add_index :comments, :user_id
    add_index :comments, :parent_comment_id
    add_index :comments, :post_id
  end
end
