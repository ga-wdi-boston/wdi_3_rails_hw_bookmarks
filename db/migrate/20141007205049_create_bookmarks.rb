class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :URL, null: false
      t.string :title, null: false
      t.text :description
      t.string :category
      t.boolean :favorite
    end
  end
end
