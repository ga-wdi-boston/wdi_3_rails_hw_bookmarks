class AddIndicesToBookmarks < ActiveRecord::Migration
  def change
    change_table :bookmarks do |t|
      t.index :url, unique: true
      t.index :title
      t.index :category
    end
  end
end
