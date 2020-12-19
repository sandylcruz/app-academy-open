class AddResponseClass < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id, null: false
      t.integer :respondent_id, null: false
    end

    add_index :responses, :respondent_id
    add_index :responses, :answer_choice_id
    add_index :responses, [:respondent_id, :answer_choice_id]
  end
end
