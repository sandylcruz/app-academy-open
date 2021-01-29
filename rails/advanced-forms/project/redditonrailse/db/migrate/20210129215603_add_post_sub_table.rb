class AddPostSubTable < ActiveRecord::Migration[5.2]
  def change
    create_table :post_sub do |t|
      t.integer :post_id, null: false
      t.integer :sub_id, null: false
      t.timestamps
    end

    add_index :post_sub, :post_id
    add_index :post_sub, :sub_id
    add_index :post_sub, [:post_id, :sub_id], unique: true
  end
end
