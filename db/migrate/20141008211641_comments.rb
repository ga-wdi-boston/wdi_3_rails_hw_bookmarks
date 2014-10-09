class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.belongs_to :bookmark
    end
  end
end
