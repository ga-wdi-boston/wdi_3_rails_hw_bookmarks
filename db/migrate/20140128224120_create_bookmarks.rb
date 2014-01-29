class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :name
      t.text :url
      t.text :comment
      t.boolean :favorite
      t.integer :click_count
      t.timestamps
    end
  end
end
