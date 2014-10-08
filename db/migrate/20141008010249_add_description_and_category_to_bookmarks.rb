class AddDescriptionAndCategoryToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :description, :string
    add_column :bookmarks, :category, :string
  end
end
