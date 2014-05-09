# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Bookmark.delete_all

Bookmark.create(
  url: 'https://pine.fm/LearnToProgram/',
  title: 'Learning ruby',
  comment: 'the best ruby write',
  category: 'useful',
  is_favorite: true
)
Bookmark.create(
  url: 'http://finance.yahoo.com/q?s=oled',
  title: 'Financial information',
  comment: 'check on universal display corporation',
  category: 'serious',
  is_favorite: false
)
Bookmark.create(
  url: 'http://www.weather.com',
  title: 'Weather',
  comment: 'generic weather site',
  category: 'useful',
  is_favorite: false
)
Bookmark.create(
  url: 'http://www.buzzfeed.com/',
  title: 'A cure for boredom',
  comment: 'a good way to waste the afternoon',
  category: 'funny',
  is_favorite: false
)
Bookmark.create(
  url: 'http://www.google.com',
  title: 'Google search',
  comment: 'the best search engine',
  category: 'useful',
  is_favorite: true
)
Bookmark.create(
  url: 'https://www.chase.com/',
  title: 'Chase bank',
  comment: 'a good bank',
  category: 'serious',
  is_favorite: true
)
Bookmark.create(
  url: 'http://www.usaa.com/',
  title: 'USAA bank',
  comment: '',
  category: 'serious',
  is_favorite: false
)
Bookmark.create(
  url: 'http://www.ask.com',
  title: 'Jeeves search',
  comment: 'the worst? search engine',
  category: 'funny',
  is_favorite: false
)
Bookmark.create(
  url: 'https://www.monkey.com/',
  title: 'Monkies.. on a website',
  comment: '',
  category: 'funny',
  is_favorite: true
)
Bookmark.create(
  url: 'http://www.pandora.com/',
  title: 'Pandora',
  comment: 'Streaming music on the internet',
  category: 'useful',
  is_favorite: false
)
