class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.references :bookmark, index: true
    end
  end
end


# class CreateComments < ActiveRecord::Migration
# t.references could be replaced with belongs_to
#   def change
#     create_table :comments do |t|
#       t.string :body
#       t.references :bookmark, index: true
#     end
#   end
# end

