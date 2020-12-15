class AddTagTopic < ActiveRecord::Migration[5.1]
  def change
    create_table :TagTopic, force: cascade: do |t|
      t.timestamps
    end
  end
end
