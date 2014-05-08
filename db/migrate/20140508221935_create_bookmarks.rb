class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url, :title
      t.text :comment
      t.text :category
      t.boolean :is_fav
      t.index :category
    end
  end
end
