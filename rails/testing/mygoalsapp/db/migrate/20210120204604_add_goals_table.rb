class AddGoalsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title, null: false
      t.string :user_id, null: false
      t.text :description, null: false
      t.boolean :private, null: false, default: false 
      t.boolean :completed, null: false, default: false
      t.timestamps
    end

    add_index :goals, :user_id
    add_index :goals, :title
  end
end
