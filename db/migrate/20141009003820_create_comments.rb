class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :bookmark, index: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
