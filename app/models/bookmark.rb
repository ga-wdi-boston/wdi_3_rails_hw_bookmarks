class Bookmark < ActiveRecord::Base
  validates :url, :format => URI::regexp(%w(http https))
  validates :title, presence: true
end
