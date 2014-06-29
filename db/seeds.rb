

Bookmark.delete_all
Category.delete_all

puts "Creating 3 initial categories"

Category.create!(name: "funny")
Category.create!(name: "useful")
Category.create!(name: "serious")

puts "Creating 20 Bookmarks"
bookmark_count = 20
bookmark_count.times do |i|
  Bookmark.create!(title: "Bookmark #{i}", url: "http://#{i}.com", comment: "This is a very informative comment.", category: rand(3))
end









# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
