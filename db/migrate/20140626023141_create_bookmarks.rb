class CreateBookmarks < ActiveRecord::Migration
  def up
    create_table :bookmarks do |t|
      t.text :url, null: false
      t.text :title, null: false
      t.text :comment
      t.text :category
      t.boolean :is_favorite, default: false

      t.timestamps
    end
  end

  def down
    drop_table :bookmarks
  end
end
