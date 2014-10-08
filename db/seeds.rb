  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.create(title: "New York Times", url: "http://nyt.com", description: "", category: :helpful, favorite_flag: false)

Bookmark.create(title: "Gawker", url: "http://gawker.com", description: "indulgence", category: :funny, favorite_flag: true)

Bookmark.create(title: "AOL", url: "http://aol.com", description: "lol", category: :funny, favorite_flag: false)
