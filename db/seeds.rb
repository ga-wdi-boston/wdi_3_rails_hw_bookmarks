# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bookmark.delete_all

Bookmark.create!(
  title: "Ruby on Rails Guides",
  url: "http://guides.rubyonrails.org/",
  comment: "Awesome guide!",
  category: "Useful",
  is_favorite: true
  )

Bookmark.create!(
  title: "Rails Documentation",
  url: "http://api.rubyonrails.org/",
  comment: "Official Documentation",
  category: "Useful",
  is_favorite: false
  )

Bookmark.create!(
  title: "CAP Theorem: Explained",
  url: "http://robertgreiner.com/2014/06/cap-theorem-explained/",
  comment: "",
  category: "Serious",
  is_favorite: false
  )

Bookmark.create!(
  title: "An Introduction To Full-Stack JavaScript",
  url: "http://www.smashingmagazine.com/2013/11/21/introduction-to-full-stack-javascript/",
  comment: "Alternative to rails",
  category: "Serious",
  is_favorite: false
  )

Bookmark.create!(
  title: "Angular, Ember, And Backbone: Which JavaScript Framework Is Right For You?",
  url: "http://readwrite.com/2014/02/06/angular-backbone-ember-best-javascript-framework-for-you#awesm=~oIlDDgJzjmlbSG",
  comment: "",
  category: "Useful",
  is_favorite: false
  )

Bookmark.create!(
  title: "31 GIFs That Will Make You Laugh Every Time",
  url: "http://www.buzzfeed.com/summeranne/gifs-that-will-make-you-laugh-every-time",
  comment: "Awesome guide!",
  category: "Funny",
  is_favorite: true
  )
