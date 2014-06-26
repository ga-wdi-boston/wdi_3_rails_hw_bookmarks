Bookmark.delete_all

num_of_bookmarks = 20

class Fixnum
  def to_b
    !self.zero?
  end
end

num_of_bookmarks.times do
  Bookmark.create(url: Faker::Internet.url,
                  title: Faker::Company.name,
                  comment: Faker::Lorem.sentence,
                  category: Bookmark::CATEGORIES[rand(3)],
                  is_favorite: Random.new.rand(0..1).to_b
                  )
end
