nytimes = Bookmark.create(title: "New York Times", url: "http://nytimes.com", favorite: false, comment: "A great news site")
huffington = Bookmark.create(title: "Huffington Post", url: "http://huffingtonpost.com", favorite: false, comment: "Some good news, some clickbait")
ga = Bookmark.create(title: "General Assembly", url: "http://ga.co", favorite: true, comment: "The best school")

nytimes.comments.create(comment: "I love this site!")
nytimes.comments.create(comment: "A good place to visit if you want to learn.")

huffington.create(comment: "Good place to get the lastest news.")
huffington.create(comment: "Where I go to get my daily scoop.")

ga.create(comment: "Join GA's WDI course!")
ga.create(comment: "This is where I'm studying")
