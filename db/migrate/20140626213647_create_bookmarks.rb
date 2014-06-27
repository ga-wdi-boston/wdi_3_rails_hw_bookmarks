class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :title, null: false
      t.text :url, null: false
      t.text :comment
      t.text :category
      t.boolean :is_favorite, null: false

      t.index :category

      t.timestamps
    end
  end
end
