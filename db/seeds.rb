Bookmark.delete_all

bookmark_count = 15

bookmark_count.times do |i|
  Bookmark.create!(title: "Title #{i}", url: "http//fuckingshitsucks#{i}.org",
    comment: "Shut up about it: #{i}", category: "Funny", favorite: false)
end

