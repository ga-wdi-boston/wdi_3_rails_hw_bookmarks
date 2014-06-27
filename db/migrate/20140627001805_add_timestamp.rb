class AddTimestamp < ActiveRecord::Migration
  def change
    change_table :bookmarks do |t|
      t.timestamps
    end
  end
end
