class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false

      t.index :url, unique: true
      t.index :title, unique: true
      t.index :category, unique: true

    end
  end
end

