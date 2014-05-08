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
  title: 'learning ruby',
  comment: 'the best ruby write',
  category: 'useful',
  is_favorite: true
)
Bookmark.create(
  url: 'http://finance.yahoo.com/q?s=oled',
  title: 'financial information',
  comment: 'check on universal display corporation',
  category: 'serious',
  is_favorite: false
)
Bookmark.create(
  url: 'http://www.weather.com',
  title: 'weather',
  comment: 'generic weather site',
  category: 'useful',
  is_favorite: false
)
Bookmark.create(
  url: 'http://www.buzzfeed.com/',
  title: 'cure for boredom',
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

