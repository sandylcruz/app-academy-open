class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table "users," force: :cascade do |t|
      t.string "email", null: false
    end
  end
end

