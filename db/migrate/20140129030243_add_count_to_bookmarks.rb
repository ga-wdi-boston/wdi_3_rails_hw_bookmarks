class AddCountToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :count, :integer
  end
end
