class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :title, null: false
      t.string :description
      t.string :category
      t.string :checkbox
      t.timestamps null: false
    end
  end
end
