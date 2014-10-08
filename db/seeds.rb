# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bookmark.create(url: 'http://mashable.com/', title: 'Mashable')
Bookmark.create(url: 'http://www.wired.com/', title: 'Wired', comment: 'Comment also', category: 'News', checked: true)
Bookmark.create(url: 'http://tutsplus.com/', title: 'Tuts', comment: 'Comment')