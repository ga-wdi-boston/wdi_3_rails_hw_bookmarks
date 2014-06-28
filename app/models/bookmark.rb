class Bookmark < ActiveRecord::Base
  CATEGORIES = ["Funny", "Serious", "Useful"]
  validates :title, presence: true
  validates :url, presence: true
  validates :url, format: { with: /\Ahttp.+\z/ }
  validates :is_favorite, inclusion: { in: [true, false] }
  validates :category, inclusion: { in: CATEGORIES }
end
