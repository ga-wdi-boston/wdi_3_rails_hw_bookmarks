class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :title
      t.string :comment
      t.string :category
      t.boolean :favorite
    end
  end
end
