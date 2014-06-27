class Bookmark < ActiveRecord::Base
  CATEGORIES = [nil, "Funny", "Serious", "Useful"]
  validates :url, presence: true, format: {with: /\Ahttp:\/\//}
end
