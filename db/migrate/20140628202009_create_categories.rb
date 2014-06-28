class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :category
      t.timestamps

      t.index :category
    end
  end
end
