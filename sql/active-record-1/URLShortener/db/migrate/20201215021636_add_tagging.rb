class AddTagging < ActiveRecord::Migration[5.1]
  def change
    create_table :tagging
    t.string :tag_topic_id, null: false
    t.string :shortened_url_id, null: false
  end
end
