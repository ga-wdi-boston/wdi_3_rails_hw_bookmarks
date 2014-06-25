class CreateBookmark < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url, null: false
      t.text :title, null: false
      t.text :comment
      t.text :category, default: "none"
      t.boolean :favorite, default: false
    end
  end
end
