class Bookmark < ActiveRecord::Base
  CATEGORIES = ['Serious', 'Funny', 'Useful']
  validates :title, presence: true
  validates :url, format: {with: URI.regexp}
end
