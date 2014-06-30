class ReviseCategoryColumn < ActiveRecord::Migration
  def change
    rename_column :bookmarks, :category, :category_id

  end
end
