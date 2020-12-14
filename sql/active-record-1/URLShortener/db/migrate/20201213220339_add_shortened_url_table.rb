class AddShortenedUrlTable < ActiveRecord::Migration[5.1]
  def change
    create_table :shortened_urls, force: :cascade do |t|
      t.string :short_url, null: false
      t.string :long_url, null: false
      t.integer :user_id, null: false
    end

    add_index :shortened_urls, :user_id
    add_index :shortened_urls, :short_url, unique: true
  end
end
