class PutDatabaseBackUp < ActiveRecord::Migration
  def change
    t.string :url, null: false
    t.string :title, null: false
    t.text :comment
    t.string :category
    t.boolean :checkbox

    t.timestamps

    t.index :url, unique: true
    t.index :title, unique: true
    t.index :category, unique: true
  end
end
