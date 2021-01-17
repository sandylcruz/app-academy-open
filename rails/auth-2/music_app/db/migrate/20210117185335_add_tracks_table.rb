class AddTracksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.integer :album_id, null: false
      t.integer :ord, null: false
      t.boolean :bonus, null: false, default: true
      t.text :lyrics, null: false
      t.timestamps
    end
  end
end
