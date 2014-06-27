class ChangeCategoryType < ActiveRecord::Migration
  def change
    change_table :bookmarks do |t|
      t.text :category
    end
    remove_column :bookmarks, :category_id, :integer
  end
end
