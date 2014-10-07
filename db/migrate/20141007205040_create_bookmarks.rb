class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.text :description
      t.string :category
      t.boolean :favorite, default: false
    end
  end
end
