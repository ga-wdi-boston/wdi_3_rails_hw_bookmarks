class AddDefaultValuesToBookmarks < ActiveRecord::Migration
  def up
    change_column :bookmarks, :click_count, :integer, :default => 0
    change_column :bookmarks, :is_favorite, :boolean, :default => false
  end
  def down
    change_column :bookmarks, :click_count, :integer, :default => nil
    change_column :bookmarks, :is_favorite, :boolean, :default => nil
  end
end
