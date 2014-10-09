class CreateSubcomment < ActiveRecord::Migration
  def change
    create_table :subcomments do |t|
      t.string :text
      t.references :comment, index: true
    end
  end
end
