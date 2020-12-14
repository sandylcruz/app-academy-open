class CreateVisitTable < ActiveRecord::Migration[5.1]
  def change
    create_table :visit do |t|, force: :cascade do |t|
      t.integer :user_id
      t.string :shortened_url_id

      t.timestamps
    end

    add_index :visits, :user_id
    add_index :visits, :shortened_url_id
  end
end
