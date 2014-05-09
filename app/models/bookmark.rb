class Bookmark < ActiveRecord::Base
  CATEGORIES = ['Serious', 'Funny', 'Useful']
  validates :title, presence: true
  validates :url, presence: true
end
