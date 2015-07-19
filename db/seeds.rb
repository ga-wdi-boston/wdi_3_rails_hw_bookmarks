Bookmark.delete_all
Comment.delete_all

@bookmark1 = Bookmark.create(url: "https://www.facebook.com", title: "Facebook", description: "social network", category: "Useful", checkbox: "favorite")
@bookmark2 = Bookmark.create(url: "http://www.cnn.com", title: "CNN", description: "news", category: "Serious", checkbox: "favorite")
Bookmark.create(url: "http://www.weather.com", title: "Weather", description: "weather forecast", category: "Useful", checkbox: "not-favorite")
Bookmark.create(url: "http://www.nhl.com", title: "NHL", description: "NHL hockey", category: "Useful", checkbox: "favorite")

# Comment.create(body: "tired of facebook...", bookmark: @bookmark1, user_id: 1)
# Comment.create(body: "I spend too much time on facebook", bookmark: @bookmark1, user_id: 1)
# Comment.create(body: "BBC is much better", bookmark: @bookmark2, user_id: 1)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
