class CreateBookmarks < ActiveRecord::Migration
  def create
    create_table :bookmarks do |t|
      t.text :title
      t.text :url
      t.text :comment
      t.boolean :favorite
    end
  end
end
