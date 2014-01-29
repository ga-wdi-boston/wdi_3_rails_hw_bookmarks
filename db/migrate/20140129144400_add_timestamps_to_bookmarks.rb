class AddTimestampsToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :created_at, :timestamp
    add_column :bookmarks, :updated_at, :timestamp
  end
end
