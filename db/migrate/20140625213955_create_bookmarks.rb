class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.text :comment
      t.string :category
      t.boolean :is_checked_favorite, default: false

      t.timestamps
    end
  end
end
