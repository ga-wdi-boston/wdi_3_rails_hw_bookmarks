class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url, null: false
      t.index :url, unique: true
      t.text :title, null: false
      t.index :title
      t.text :comment
      t.text :category
      t.boolean :is_favorite
    end
  end
end
