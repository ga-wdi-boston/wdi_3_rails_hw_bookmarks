class Bookmark < ActiveRecord::Base

  CATEGORIES = ['Sports', 'Technology', 'Business']

  validates :url, presence: true
  validates :title, presence: true


end
