# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bookmark.delete_all
Comment.delete_all

def run_seed(bookmarks_list, comments_list)
  bookmarks_list.each do |title, category, description, favorite, url|
    new_bookmark = Bookmark.create(title: title, category: category, description: description, favorite: favorite, url: url)

    comments_list.each do |message, name, created_at|
      Comment.create(message: message, name: name, created_at: created_at, bookmark_id: new_bookmark.id)
    end
  end
end

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

  comments_list = [
    ["Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.", "John Smith", Time.zone.parse('2014-05-14 08:23:42').strftime('%s').to_i],
    ["Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.", "stephen", Time.zone.parse('2014-05-14 10:23:42').strftime('%s').to_i],
    ["Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna", "r.c.", Time.zone.parse('2012-12-14 18:23:42').strftime('%s').to_i],
    ["Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.", "samantha richards", Time.zone.parse('2013-09-14 23:23:42').strftime('%s').to_i]
  ]

run_seed(bookmarks_list, comments_list)

