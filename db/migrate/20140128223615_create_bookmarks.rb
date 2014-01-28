class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :name
      t.text :url
      t.text :comment
      t.boolean :favorite
      t.timestamps
    end
  end
end
