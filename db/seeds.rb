# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all


bookmarks_list = [
  ["Google", "Useful", "Search Engine", true, "http://www.google.com"],
  ["New York Times", "Serious", "News", true, "http://www.nytimes.com"],
  ["Just Jared", "Funny", "Celebrity Nonsense", false, "http://www.justjared.com"],
  ["Pinterest", "Useful", "Ideas, photos, other cool stuff", false, "http://www.pinterest.com"],
  ["General Assembly", "Serious", "All things WDI", true, "http://generalassemb.ly"],
  ["Amazon", "Useful", "Shopping mecca", true, "http://www.amazon.com"],
  ["CelticsBlog", "Useful", "Celtics news, scores, discussion, and other stuff.", true, "http://www.celticsblog.com"],
  ["The Ultimate Siri Guide", "Useful", "Walkthrough of most important Siri dictation commands.", false, "http://www.idownloadblog.com/2014/03/08/siri-guide/"]
]

bookmarks_list.each do |title, category, description, favorite, url|
  Bookmark.create( title: title, category: category, description: description, favorite: favorite, url: url)
end
