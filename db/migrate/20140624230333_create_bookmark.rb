class CreateBookmark < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url, null: false
      t.text :title, null: false
      t.text :comment, default: ""
      t.text :category
      t.boolean :favorite, default: false
      t.integer :click_count, default: 0
    end
  end
end
