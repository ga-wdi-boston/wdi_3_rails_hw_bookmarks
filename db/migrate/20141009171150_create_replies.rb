class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :text
      t.references :commentable, polymorphic: true
      t.timestamps
    end
  end
end
