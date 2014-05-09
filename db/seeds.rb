# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bookmark.delete_all

Bookmark.create(url: 'http://www.google.com', title: 'Google', comment: 'Best search engine', category: 'Useful', is_fav: true )
Bookmark.create(url: 'http://www.facebook.com', title: 'Facebook', comment: 'Great waste of time', category: 'Serious', is_fav: false )
Bookmark.create(url: 'http://www.http://guides.rubyonrails.org/index.html', title: 'RailsGuide', comment: 'Will save me when I am in a pickle', category: 'Useful', is_fav: false )
Bookmark.create(url: 'http://www.youtube.com/watch?v=-vBqazs3j3A', title: 'Funny Cat Videos', comment: 'Amazing Video', category: 'Funny', is_fav: true )
Bookmark.create(url: 'http://www.foodbabe.com', title: 'Food Babe', comment: '', category: 'Useful', is_fav: true )
Bookmark.create(url: 'http://www.mindbodygreen.com', title: 'Mind Body Green', comment: 'Great Resource', category: '', is_fav: true )
Bookmark.create(url: 'http://www.abesmarket.com', title: 'Abe Market', comment: 'Yummy Snacks and Organic Goods', category: 'Useful', is_fav: false )
Bookmark.create(url: 'http://www.learnvest.com', title: 'LearnVest', comment: '', category: 'Useful', is_fav: true )
Bookmark.create(url: 'http://www.northeastern.edu', title: 'Northeastern University', comment: 'For reviewing graduation requirements', category: '', is_fav: true )
Bookmark.create(url: 'http://www.linkedin.com', title: 'LinkedIn', comment: 'Career Headquarters', category: 'Useful', is_fav: false )
