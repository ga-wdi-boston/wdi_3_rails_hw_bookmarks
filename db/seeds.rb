# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bookmark.delete_all

puts "Creating 20 Bookmarks"
bookmark_count = 20

bookmark_count.times do |i|
  Bookmark.create!(
    url: "Bookmark url #{i}",
    title: "Title #{i}",
    comment: "Comment #{i}",
    is_favorite: (true if rand(2) == 0)
  )
end

#Bookmark.create! does the following two things
#bookmark = Bookmark.new
#bookmark.save
