class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.text :URL
      t.text :title
      t.text :comment
      t.boolean :favorite
    end
  end
end
