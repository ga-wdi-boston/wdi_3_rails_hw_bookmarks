Bookmark.delete_all

Bookmark.create(
  url: "http://www.crunchbase.com/",
  title: "crunchbase",
  comment: "Start-up database",
  category: "Serious",
  is_favorited: true,
  )
Bookmark.create(
  url: "http://www.wired.com/",
  title: "wired",
  comment: "Tech Blog",
  category: "Serious",
  is_favorited: false,
  )
Bookmark.create(
  url: "http://techcrunch.com/",
  title: "techcrunch",
  comment: "Tech Blog",
  category: "Serious",
  is_favorited: false,
  )
Bookmark.create(
  url: "http://www.tumblr.com/",
  title: "tumblr",
  comment: "Great blog site.",
  category: "Useful",
  is_favorited: false,
  )
Bookmark.create(
  url: "http://beenos.com/",
  title: "BEENOS",
  comment: "Great start-up incubator",
  category: "Serious",
  is_favorited: false,
  )
Bookmark.create(
  url: "http://www.reddit.com/",
  title: "reddit",
  comment: "User generated news links",
  category: "Funny",
  is_favorited: false,
  )




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
