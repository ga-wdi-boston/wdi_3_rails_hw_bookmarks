class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name, null: false
    end
  end
end
