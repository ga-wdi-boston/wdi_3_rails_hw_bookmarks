class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url, null: false
      t.text :title, null: false
      t.text :comment
      t.text :category
      t.boolean :is_favorite
      t.index :title, unique: true
      t.index :url
    end
  end
end
