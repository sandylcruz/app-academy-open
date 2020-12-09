class PersonModel < ActiveRecord::Migration[5.1]
  def up
    create_table :people do |t|
      t.string :name
      t.string :house_id
      t.timestamps
    end
  end

  def down
    drop_table :people
  end

end