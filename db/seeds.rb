# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all
Comment.delete_all
linkedin = Bookmark.create(title: "Holly's LinkedIn", url: "http://www.linkedin.com/in/hollycmoody/", category: "Serious", description: "Holly's LinkedIn account.")
rt_adoption = Bookmark.create(title: "Rat Terrier Adoption", url: "http://www.newrattitude.org/dogs.htm",  category: "Useful", description: "Save the ratties!! Take home a cutie!!")
yahoo = Bookmark.create(title: "Yahoo Dashboard", url: "http://www.yahoo.com/", category: "Funny", description: "Yahoo Dashboard to see stocks and news.")

linkedin.comments.create(content: "Nice picture! Where is that taken?")
linkedin.comments.create(content: "Can you help me connect with one of your contacts.")

rt_adoption.comments.create(content: "They're SO cute! Would love to have them all.")

yahoo.comments.create(content: "The stocks are interesting.")
yahoo.comments.create(content: "The human-interest stories are sometimes pretty weird.")
yahoo.comments.create(content: "Wish they'd get rid of the commercials in the videos.")

