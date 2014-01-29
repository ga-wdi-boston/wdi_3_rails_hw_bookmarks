class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :title
      t.text :url
      t.boolean :favourite
      t.text :comment
    end
  end
end
