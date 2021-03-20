class AddStepsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.boolean :done
    end
  end
end
