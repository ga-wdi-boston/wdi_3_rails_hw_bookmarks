class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :title
      t.text :comments
      t.string :category
      t.boolean :is_favorite

      t.timestamps
    end
  end
end
