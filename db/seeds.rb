# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mashable = Bookmark.create(url: 'http://mashable.com/', title: 'Mashable')
wired = Bookmark.create(url: 'http://www.wired.com/', title: 'Wired', category: 'News', checked: true)
tuts = Bookmark.create(url: 'http://tutsplus.com/', title: 'Tuts')

mashable.comments.create(comment: 'Mashable is one of the best technology news website in the world.')
wired.comments.create(comment: 'Wired is the most seccussful new stand in the world')
wired.comments.create(comment: 'Wired also has a magazine.')
tuts.comments.create(comment: 'Tuts is both news and educational website that teaches about cs.')


