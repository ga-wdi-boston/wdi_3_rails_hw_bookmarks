class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :URL

      t.timestamps null: false
    end
  end
end
