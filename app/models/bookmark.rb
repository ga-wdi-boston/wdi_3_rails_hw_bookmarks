class Bookmark < ActiveRecord::Base

  CATEGORIES = ['Sports', 'Technology', 'Business']

  validates :url, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true


end
