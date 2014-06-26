class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :title
      t.text :comment
      t.string :category
      t.boolean :checkbox

      t.timestamps

    end
  end
end

