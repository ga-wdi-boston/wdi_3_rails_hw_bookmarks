class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :text
      t.text :url
      t.string :comment
      t.string :text
      t.string :checkbox
      t.string :boolean
    end
  end
end
