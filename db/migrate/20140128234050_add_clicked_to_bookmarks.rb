class AddClickedToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :clicked, :integer, :default => 0
  end
end
