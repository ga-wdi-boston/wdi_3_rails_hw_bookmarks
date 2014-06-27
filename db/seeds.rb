# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Why do I need delete_all?
Bookmark.delete_all

 puts "All Bookmarks"

 bookmark_count = 30

 categories = ["Serious", "Funny", "Useful"]
 is_favorite_options = ["true", "false"]

 bookmark_count.times do |i|
   Bookmark.create!(
     title: Faker::Company.name,
     url: Faker::Internet.url,
     comment: Faker::Lorem.sentence,
     category: categories[rand(3)],
     is_favorite: is_favorite_options[rand(2)]
     )
 end
