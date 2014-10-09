# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all
Comment.delete_all

bookmarks_list = [
  ["Google", "Useful", "Search Engine", true, "http://www.google.com", 1],
  ["New York Times", "Serious", "News", true, "http://www.nytimes.com", 2],
  ["Just Jared", "Funny", "Celebrity Nonsense", false, "http://www.justjared.com", 3],
  ["Pinterest", "Useful", "Ideas, photos, other cool stuff", false, "http://www.pinterest.com", 4],
  ["General Assembly", "Serious", "All things WDI", true, "http://generalassemb.ly", 5],
  ["Amazon", "Useful", "Shopping mecca", true, "http://www.amazon.com", 6],
  ["CelticsBlog", "Useful", "Celtics news, scores, discussion, and other stuff.", true, "http://www.celticsblog.com", 7],
  ["The Ultimate Siri Guide", "Useful", "Walkthrough of most important Siri dictation commands.", false, "http://www.idownloadblog.com/2014/03/08/siri-guide/", 8]
]



bookmarks_list.each do |title, category, description, favorite, url, id|
  Bookmark.create(title: title, category: category, description: description, favorite: favorite, url: url, id: id)

  comments_list = [
    ["Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.", "John Smith", id],
    ["Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.", "stephen", id],
    ["Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna", "r.c.", id],
    ["Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.", "samantha richards", id]
  ]

  comments_list.each do |message, name, bookmark_id|
    Comment.create(message: message, name: name, bookmark_id: bookmark_id)
  end
end
