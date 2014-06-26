class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :title
      t.text :url
      t.text :comment
      t.text :category
      t.boolean :is_favorite

      t.timestamps
    end
  end
end
