# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all
Bookmark.create(title: "Holly's LinkedIn", url: "http://www.linkedin.com/in/hollycmoody/", category: "Serious", description: "Holly's LinkedIn account.")
Bookmark.create(title: "Rat Terrier Adoption", url: "http://www.newrattitude.org/dogs.htm",  category: "Useful", description: "Save the ratties!! Take home a cutie!!")
Bookmark.create(title: "Yahoo Dashboard", url: "http://www.yahoo.com/", category: "Funny", description: "Yahoo Dashboard to see stocks and news.")

