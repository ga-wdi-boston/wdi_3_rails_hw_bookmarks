class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.text :title
      t.text :comment
      t.boolean :favorite
      t.text :shorturl
      t.integer :visits, default: 0

      t.timestamps
    end
  end
end
