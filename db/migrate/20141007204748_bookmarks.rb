class Bookmarks < ActiveRecord::Migration
  def change
      create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :name, null: false
      t.string :description
      t.string :category
        # this means the time stamps are created and can not be null.
      t.timestamps null: false
      end
  end
end
