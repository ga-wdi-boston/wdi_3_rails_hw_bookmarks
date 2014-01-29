class AddVisitsToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :visits, :integer
  end
end
