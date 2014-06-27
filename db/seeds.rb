Bookmark.delete_all

puts "Creating 5 Bookmarks"

Bookmark.create!(url: 'http://www.apple.com', title: 'Apple', comment: 'Nice gadgets', category: 'technology', is_favorite: true)
Bookmark.create!(url: 'http://www.google.com', title: 'Google', comment: 'Check out the self driving car', category: 'technology', is_favorite: true)
Bookmark.create!(url: 'http://www.espn.go.com', title: 'ESPN', comment: 'Sports', category: 'Sports', is_favorite: false)
Bookmark.create!(url: 'http://fortune.com', title: 'Fortune Magazine', category: 'business news', is_favorite: true)
Bookmark.create!(url: 'http://www.cnbc.com', title: 'CNBC', comment: 'Check out stock prices', category: 'business news', is_favorite: false)
