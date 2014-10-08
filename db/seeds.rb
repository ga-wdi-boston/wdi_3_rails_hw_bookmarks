  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Bookmark.delete_all

Bookmark.create(title: "New York Times", url: "http://nyt.com", comment: "", category: :helpful, favorite_flag: false)

Bookmark.create(title: "Gawker", url: "http://gawker.com", comment: "indulgence", category: :funny, favorite_flag: true)

Bookmark.create(title: "AOL", url: "http://aol.com", comment: "lol", category: :funny, favorite_flag: false)

Bookmark.create(title: "Reddit", url: "http://www.reddit.com", comment: "timesink", category: :funny, favorite_flag: true)

Bookmark.create(title: "Jezebel", url: "http://jezebel.com", comment: "preach it", category: :serious, favorite_flag: true)
