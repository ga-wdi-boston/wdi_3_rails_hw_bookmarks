# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all
Bookmark.create(title: "Holly's LinkedIn", url: "http://www.linkedin.com/in/hollycmoody/")
Bookmark.create(title: "Rat Terrier Adoption", url: "http://www.newrattitude.org/dogs.htm")
Bookmark.create(title: "Yahoo Dashboard", url: "http://www.yahoo.com/")

