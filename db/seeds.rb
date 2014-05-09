Bookmark.delete_all

Bookmark.create(url: 'http://www.gmail.com', title: 'Gmail', comment: 'love this one', category: 'Useful', is_favorite: true)
Bookmark.create(url: 'http://www.github.com', title: 'GitHub', comment: '', category: 'Useful', is_favorite: false)
Bookmark.create(url: 'http://www.codeschool.com', title: 'Code School', comment: '', category: 'Useful', is_favorite: true)
Bookmark.create(url: 'https://gist.github.com/GA-Boston/f3494397685f683d5629', title: 'GA Prework', comment: '', category: 'Useful', is_favorite: false)
Bookmark.create(url: 'http://ruby.learncodethehardway.org/book/', title: 'Learn Ruby The Hard Way', comment: '', category: 'Useful', is_favorite: true)
Bookmark.create(url: 'https://na1.salesforce.com/help/pdfs/en/salesforce_git_developer_cheatsheet.pdf', title: 'Git cheat sheet', comment: '', category: 'Useful', is_favorite: true)



Bookmark.create(url: 'http://www.bookfail.com/', title: 'Bookfail', comment: 'real books with hilarious titles', category: 'Funny', is_favorite: true)

Bookmark.create(url: 'http://www.foodrenegade.com/', title: 'Food Renegade', comment: '', category: 'Serious', is_favorite: false)
Bookmark.create(url: 'http://stilldrinking.org/', title: "Peter Welch's blog", comment: '', category: 'Serious', is_favorite: true)


Bookmark.create(url: 'http://www.facebook.com', title: 'Facebook', comment: 'usual login', is_favorite: true)
Bookmark.create(url: 'http://en.wikibooks.org/wiki/Hungarian', title: 'Hungarian wikibook', comment: '', is_favorite: false)
Bookmark.create(url: 'http://www.take-a-screenshot.org/', title: 'How to take a screenshot on a mac', comment: '', is_favorite: false)
Bookmark.create(url: 'https://www.centresuite.com/', title: 'Bank of America Mastercard', comment: 'worst website ever', is_favorite: true)
Bookmark.create(url: 'http://9to5mac.com/', title: '9 to 5 mac', comment: '', is_favorite: true)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
