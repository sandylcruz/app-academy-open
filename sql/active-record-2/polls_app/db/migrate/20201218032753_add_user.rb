class AddUser < ActiveRecord::Migration[5.1]
  def change
    create_table :user do |t|
      t.string :user_name
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
