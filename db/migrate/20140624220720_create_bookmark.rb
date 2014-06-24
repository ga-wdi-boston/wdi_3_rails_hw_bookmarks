class CreateBookmark < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url, null: false
      t.text :title, null:false
      t.text :comment
      t.integer :category_id
      t.boolean :is_favorite
    end
  end
end
