bm1 = Bookmark.new(url: 'http://www.nytimes.com/', title: 'The New York Times', category: 'Serious', is_favorite: true)
bm1.save

bm2 = Bookmark.new(url: 'http://cuteoverload.com/', title: 'Cute Overload', category: 'Funny', is_favorite: true)
bm2.save

bm3 = Bookmark.new(url: 'http://www.newsoftheweird.com/archive/index.html', title: 'News of the Weird', category: 'Funny', is_favorite: false)
bm3.save

bm4 = Bookmark.new(url: 'http://www.climate.gov/', title: 'Climate', category: 'Serious', is_favorite: false)
bm4.save

bm5 = Bookmark.new(url: 'http://www.collegehumor.com/', title: 'College Humor', category: 'Useful', is_favorite: false)
bm5.save

bm6 = Bookmark.new(url: 'http://www.uncubemagazine.com/magazines', title: 'Uncube Magazine', category: 'Useful', is_favorite: false)
bm6.save

bm7 = Bookmark.new(url: 'http://www.hbogo.com/#home/', title: 'HBO Go', category: 'Useful', comments: 'The best', is_favorite: true)
bm7.save

bm8 = Bookmark.new(url: 'http://play.lso.co.uk/', title: 'London Symphony Orchestra', category: 'Serious', comments: 'OMG, the conductor is so creepy', is_favorite: true)
bm8.save

bm9 = Bookmark.new(url: 'http://www.reasonsmysoniscrying.com/', title: 'Reasons My Son is Crying', category: 'Funny', comments: 'Sick', is_favorite: false)
bm9.save

bm10 = Bookmark.new(url: 'http://cachemonet.com/', title: 'Cache Monet', category: 'Serious', comments: 'This is a weird but interesting site', is_favorite: false)
bm10.save
