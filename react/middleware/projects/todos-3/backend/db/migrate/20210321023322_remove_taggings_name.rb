class RemoveTaggingsName < ActiveRecord::Migration[5.2]
  def change
    remove_column :taggings, :name
  end
end
