class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.text :title
      t.text :comment
      t.text :category
      t.boolean :is_favorited, default: false

      t.index :url, unique: true
      t.index :title
      t.index :category, unique: true

    end
  end
end
