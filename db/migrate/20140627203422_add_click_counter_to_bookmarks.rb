class AddClickCounterToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :click_count, :integer
  end
end
