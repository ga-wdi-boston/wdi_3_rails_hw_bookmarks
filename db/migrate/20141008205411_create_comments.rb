class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.belongs_to :bookmark, index: true

      t.timestamps null: false
    end
  end
end
