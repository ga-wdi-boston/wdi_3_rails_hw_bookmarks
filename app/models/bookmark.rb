
class Bookmark < ActiveRecord::Base
  CATEGORIES = ['useful', 'serious', 'funny']
  validates :title, :url, presence: true
  validates :url, :format => URI::regexp(%w(http https))
end


