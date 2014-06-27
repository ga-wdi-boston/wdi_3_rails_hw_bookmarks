aclass CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.text :title
      t.text :comment
      t.text :category
      t.boolean :is_favourite

      t.timestamps
    end
  end
end
