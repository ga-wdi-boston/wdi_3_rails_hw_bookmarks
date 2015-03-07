class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
    	t.string :url, null: false
    	t.string :title, null: false
    	t.string :category, null: true
    	t.boolean :checked, null: true
    end
  end
end
