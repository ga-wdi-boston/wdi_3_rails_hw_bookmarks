class ChangeCategoryColumnToInt < ActiveRecord::Migration
  def change
    remove_column :bookmarks, :category_id
    add_column :bookmarks, :category_id, :integer
  end
end
