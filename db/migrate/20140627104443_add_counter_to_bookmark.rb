class AddCounterToBookmark < ActiveRecord::Migration
  def change
    change_table :bookmarks do |t|
      t.integer :counter, default: 0
    end
  end
end
