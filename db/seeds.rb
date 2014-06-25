# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all

Bookmark.create!(
  url: 'http://www.google.com',
  title: 'Google',
  comment: 'really good search engine',
  category: 'useful',
  is_checked_favorite: true
  )

Bookmark.create!(
  url: 'http://www.nytimes.com',
  title: 'New York Times Online',
  comment: 'all the news all the time',
  category: 'serious',
  is_checked_favorite: true
  )

Bookmark.create!(
  url: 'http://whatshouldwecallme.tumblr.com/',
  title: 'WhatShouldWeCallMe',
  category: 'funny',
  is_checked_favorite: true
  )

Bookmark.create!(
  url: 'http://www.ruby-doc.org/core-2.1.2/Array.html',
  title: 'Ruby Arrays',
  comment: 'A description of the Array Object and its methods',
  category: 'useful',
  is_checked_favorite: false
  )

Bookmark.create!(
  url: 'http://www.gmail.com',
  title: 'Gmail',
  category: 'useful',
  is_checked_favorite: true
  )

