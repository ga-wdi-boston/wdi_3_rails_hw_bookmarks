class PutDatabaseBackUp < ActiveRecord::Migration
  def change
     create_table :bookmarks do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.text :comment
      t.string :category
      t.boolean :is_favorite

      t.timestamps

      t.index :url, unique: true
      t.index :title, unique: true
      t.index :category, unique: true
    end
  end
end
