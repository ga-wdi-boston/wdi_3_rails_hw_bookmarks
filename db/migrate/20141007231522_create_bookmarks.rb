class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :category
      t.string :description
      t.boolean :favorite
      t.string :url
    end
  end
end
