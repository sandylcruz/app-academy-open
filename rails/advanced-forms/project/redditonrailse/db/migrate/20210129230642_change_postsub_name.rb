class ChangePostsubName < ActiveRecord::Migration[5.2]
  def change
    rename_table :post_sub, :post_subs
  end
end
