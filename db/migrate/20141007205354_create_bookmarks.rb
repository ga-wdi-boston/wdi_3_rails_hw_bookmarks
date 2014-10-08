class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.string :comment 
      t.string :category
      t.boolean :checkbox
    end
  end
end
