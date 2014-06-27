# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all

Bookmark.create({url: 'http://www.espn.com', title: 'ESPN', comment: "ESPN's main website.", category: 'Serious', is_favorite: 'true'})

Bookmark.create({url: 'http://www.facebook.com', title: 'Facebook', comment: "It's, well, Facebook.", category: 'Funny', is_favorite: 'true'})

Bookmark.create({url: 'http://www.deviantart.com', title: 'Deviantart', comment: "This site has some awesome art.", category: 'Useful', is_favorite: 'false'})

Bookmark.create({url: 'http://www.ganggreennation.com', title: 'Gang Green Nation', comment: "The best New York Jets blog on the web.", category: 'Serious', is_favorite: false})

Bookmark.create({url: 'http://www.reactiongifs.com', title: 'Reaction Gifs', category: 'Funny', is_favorite: false})
