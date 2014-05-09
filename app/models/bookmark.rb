class Bookmark < ActiveRecord::Base
  CATEGORIES = ['Serious', 'Funny', 'Useful']
  validates :title, presence: true
  validates :url, format: {with: /\bhttp\b/}
  validates :url, presence: true
end
