class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message
      t.string :name
      t.timestamp :created_at, null: false
      t.belongs_to :bookmark, index: true
    end
  end
end
