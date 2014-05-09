# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all

Bookmark.create(
 url: 'http://nytimes.com',
 title: 'New York Times',
 comment: 'Newsy crap',
 category: 'Serious',
 is_favorite: true
)

Bookmark.create(
 url: 'http://www.wirify.com/',
 title: 'Wirify',
 comment: 'Turn any web page into a wireframe.',
 category: 'Useful',
 is_favorite: false
)

Bookmark.create(
 url: 'http://colorschemedesigner.com/',
 title: 'Color Scheme Designer',
 comment: 'Design color schemes',
 category: 'Useful',
 is_favorite: false
)

Bookmark.create(
 url: 'http://www.howtosayin.com/',
 title: 'How To Say In',
 comment: 'Online language translation tool.',
 category: 'Useful',
 is_favorite: false
)

Bookmark.create(
 url: 'http://www.marriedtothesea.com/',
 title: 'Married To The Sea',
 comment: 'much funny. such lols.',
 category: 'Funny',
 is_favorite: false
)

Bookmark.create(
 url: 'http://xkcd.com',
 title: 'XKCD',
 comment: 'A webcomic of romance, sarcasm, math, and language.',
 category: 'Funny',
 is_favorite: true
)

Bookmark.create(
 url: 'http://www.penny-arcade.com/',
 title: 'Penny Arcade',
 comment: 'Webcomic focused on video games and video game culture.',
 category: 'Funny',
 is_favorite: false
)
