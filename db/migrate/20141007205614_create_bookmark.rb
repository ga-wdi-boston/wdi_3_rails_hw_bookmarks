class CreateBookmark < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.string :description
      t.string :category
      t.boolean :favorite
    end
  end
end
