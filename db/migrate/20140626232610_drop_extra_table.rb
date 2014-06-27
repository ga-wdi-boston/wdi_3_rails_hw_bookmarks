class DropExtraTable < ActiveRecord::Migration
  def change
    drop_table :Bookmarks

  end
end
