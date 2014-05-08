# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.create(     url: 'http://www.google.com',
                     title: 'Google',
                     comment: 'Search Engine',
                     category: 'useful',
                     is_favorite: true)
Bookmark.create(     url: 'http://guides.rubyonrails.org',
                     title: 'Ruby on Rails Guides',
                     comment: 'Helpful information about Ruby on Rails',
                     category: 'useful',
                     is_favorite: true)
Bookmark.create(     url: 'http://www.twitter.com',
                     title: 'Twitter',
                     comment: 'Send and receive short messages',
                     category: 'useful',
                     is_favorite: true)
Bookmark.create(     url: 'http://www.edge.com',
                     title: 'Edge News',
                     comment: 'Unbelievably strange news from around the world',
                     category: 'funny',
                     is_favorite: true)
Bookmark.create(     url: 'http://www.wsj.com',
                     title: 'Wall Street Journal',
                     comment: 'Financial News',
                     category: 'serious',
                     is_favorite: false)
Bookmark.create(     url: 'http://www.heroku.com',
                     title: 'heroku',
                     comment: 'Free web app hosting',
                     category: 'useful',
                     is_favorite: true)
Bookmark.create(     url: 'http://www.greenhornconnect.com/',
                     title: 'Greenhorn Connect',
                     comment: 'Bostons Entrepreneur Hub for resources, events, and organizations',
                     category: 'useful',
                     is_favorite: true)
Bookmark.create(     url: 'http://ohsheglows.com/',
                     title: 'Oh She Glows',
                     comment: 'Healthy cooking website with great recipes',
                     category: 'useful',
                     is_favorite: true)
Bookmark.create(     url: 'http://www.sp-studio.de/',
                     title: 'South Park Studio',
                     comment: 'Create a custom character from South Park',
                     category: 'funny',
                     is_favorite: true)
Bookmark.create(     url: 'http://www.spotify.com',
                     title: 'spotify',
                     comment: 'Music website with access to a giant library of tunes',
                     category: 'useful',
                     is_favorite: true)


