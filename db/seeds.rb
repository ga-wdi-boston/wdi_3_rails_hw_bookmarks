# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all

Bookmark.create!(
  url: "http://api.rubyonrails.org/",
  title: 'Ruby on Rails API',
  comment: '',
  category: 'Useful',
  is_favorite: true
)

Bookmark.create!(
  url: 'http://guides.rubyonrails.org/',
  title: 'Ruby on Rails Guides',
  comment: '',
  category: 'Useful',
  is_favorite: true
)

Bookmark.create!(
  url: 'http://getbootstrap.com/css/#buttons',
  title: 'Bootstrap Library',
  comment: 'sweet CSS library',
  category: 'Useful',
  is_favorite: false
)

Bookmark.create!(
  url: 'http://www.ruby-doc.org/',
  title: 'Ruby Docs',
  comment: '',
  category: 'Useful',
  is_favorite: true
)

Bookmark.create!(
  url: 'http://www.sporcle.com/',
  title: 'Sporcle',
  comment: 'mentally stimulating diversions',
  category: 'Funny',
  is_favorite: false
)

Bookmark.create!(
  url: 'http://www.nytimes.com/',
  title: 'New York Times',
  comment: 'good news source',
  category: 'Serious',
  is_favorite: false
)

Bookmark.create!(
  url: 'http://www.reddit.com/',
  title: 'Reddit',
  comment: 'big waste of time',
  category: 'Funny',
  is_favorite: false
)

Bookmark.create!(
  url: 'http://www.seriouseats.com/',
  title: 'Serious Eats',
  comment: 'good food',
  category: 'Serious',
  is_favorite: true
)

Bookmark.create!(
  url: 'http://espn.go.com/',
  title: 'ESPN',
  comment: '',
  category: 'Funny',
  is_favorite: true
)

Bookmark.create!(
  url: 'http://basketball.realgm.com/',
  title: 'RealGm',
  comment: 'good basketball news',
  category: 'Funny',
  is_favorite: false
)
