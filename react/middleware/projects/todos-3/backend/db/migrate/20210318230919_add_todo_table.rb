class AddTodoTable < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :name, null: false
      t.string :body, null: false
      t.boolean :done  
    end
  end
end
