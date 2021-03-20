class AddTaggings < ActiveRecord::Migration[5.2]
  def change
    create_table :taggings do |t|
      t.string :name, null: false
      t.integer :tag_id, null: false
      t.integer :todo_id, null: false
    end

    add_index :taggings, :tag_id
    add_index :taggings, :todo_id
  end
end
