class AddTodoTable < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :body
      t.boolean :done  
    end
  end
end
