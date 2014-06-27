class DropCategories < ActiveRecord::Migration
  def up
    drop_table :categories
  end
  def down
    create_table :categories do |t|
      t.text :name, null: false
    end
  end

end
