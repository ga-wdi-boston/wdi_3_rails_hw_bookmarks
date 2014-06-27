# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all
Bookmark.create!(
  url: "http://www.reddit.com",
  title: "Reddit",
  comment: "It's got communities for everything!",
  category: "useful",
  favorite: true
)

Bookmark.create!(
  url: "http://www.reddit.com/r/skateboarding",
  title: "/r/skateboarding",
  comment: "Skate videos, links, discussion",
  favorite: true
)

Bookmark.create!(
  url: "http://www.stackexchange.com",
  title: "Stack Exchange",
  category: "useful",
  favorite: true
)

Bookmark.create!(
  url: "http://www.imgur.com",
  title: "Imgur",
  category: "serious",
  comment: "only ever host on imgur!!"
)

Bookmark.create!(
  url: "http://www.reddit.com/r/funny",
  title: "/r/funny",
  category: "funny"
)

Bookmark.create!(
  url: "http://www.facebook.com",
  title: "Facebook",
  favorite: true
)

Bookmark.create!(
  url: "http://www.gmail.com",
  title: "Gmail",
  comment: "Google will rule the world"
)

