class AddUrlCounter < ActiveRecord::Migration
  def change
    change_table :bookmarks do |t|
      t.integer :click_count
    end
  end
end
