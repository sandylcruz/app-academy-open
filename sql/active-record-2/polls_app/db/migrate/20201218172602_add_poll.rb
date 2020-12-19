class AddPoll < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :name, null: false
      t.integer :author_id, null: false
      t.timestamps
    end

    add_index :polls, :author_id
  end
end
