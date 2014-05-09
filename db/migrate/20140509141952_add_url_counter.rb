class AddUrlCounter < ActiveRecord::Migration
  def change
    change_table :bookmarks do |t|
      t.integer :click_count, default: 0
    end
  end
end
