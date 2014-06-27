class AddNotNullToBookmarksIsFavorite < ActiveRecord::Migration
  def up
    change_column :bookmarks, :is_favorite, :boolean, :null => false
    change_column :bookmarks, :is_favorite, :boolean, :default => false
  end

  def down
    change_column :bookmarks, :is_favorite, :boolean, :null => true
    change_column :bookmarks, :is_favorite, :boolean, :default => nil
  end

end
