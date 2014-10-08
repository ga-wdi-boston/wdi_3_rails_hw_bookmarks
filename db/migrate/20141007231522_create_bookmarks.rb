class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title, null: false
      t.string :category
      t.string :description
      t.boolean :favorite
      t.string :url, null: false
    end
  end
end
