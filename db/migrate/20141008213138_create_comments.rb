class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.belongs_to :bookmark, index: true
    end
  end
end
