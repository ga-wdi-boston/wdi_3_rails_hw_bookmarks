class Bookmark < ActiveRecord::Base

  CATEGORIES = ['Useful', 'Funny', 'Serious']

  validates :title, :url, presence: true
  validates :url, :format => URI::regexp(%w(http https))
end
