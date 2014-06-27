# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all

Bookmark.create!(
  url: "http://cosmarxpolitan.tumblr.com",
  title: "Cosmarxpolitan",
  comment: "Sexy Marxism",
  is_favorite: true
)

Bookmark.create!(
  url: "http://www.chalkboardnails.com",
  title: "Chalkboard Nails",
  category: "Useful"
)

Bookmark.create!(
  url: "http://thenoser.com/article/MAN-WANT-SEX-WITH-WOMAN-BUT-DO-MAN-THINK-OF-ANYTHI",
  title: "MAN WANT SEX WITH WOMAN BUT DO MAN THINK OF ANYTHING ELSE? NO. MAN MONSTER",
  category: "Funny"
)
