class Bookmark < ActiveRecord::Base
  CATEGORIES = ["Funny", "Serious", "Useful"]
  validates :url, presence: true, format: {with: /\Ahttp:\/\//}
  validates :title, presence: true
end
