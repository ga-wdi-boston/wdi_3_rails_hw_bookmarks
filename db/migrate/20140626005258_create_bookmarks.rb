class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url, null: false
      t.text :title, null: false
      t.text :comment
      t.text :category
      t.boolean :favorite
      t.timestamps

      t.index :category
      t.index :title
    end
  end
end
