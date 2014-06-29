class AddClickCountToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :click_count, :integer, :default => 0
    add_index :bookmarks, :category
  end
end
