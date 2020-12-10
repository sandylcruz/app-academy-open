class House < ActiveRecord::Migration[5.1]
  def up
    create_table :house do |t|
      t.string :name
      t.text :address
      t.timestamps
    end
  end
end