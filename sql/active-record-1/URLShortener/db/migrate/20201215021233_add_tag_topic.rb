class AddTagTopic < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_topics, force: cascade: do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
