class Bookmark < ActiveRecord::Base
  CATEGORIES = [['funny', 'funny'], ['serious', 'serious'], ['useful', 'useful']]
  validates :url, :format => URI::regexp(%w(http https))
  validates :title, presence: true
  validates :category, inclusion: { in: CATEGORIES.flatten }
end
