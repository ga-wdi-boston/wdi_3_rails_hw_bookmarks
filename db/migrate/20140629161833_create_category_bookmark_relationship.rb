class CreateCategoryBookmarkRelationship < ActiveRecord::Migration
  def change
    change_table :bookmarks do |t|
      remove_column :bookmarks, :category_id
      t.belongs_to :category
    end
  end
end
