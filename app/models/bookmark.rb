class Bookmark < ActiveRecord::Base

  VALID_CATEGORY = ['funny', 'useful', 'serious']

  validates :title, presence: true
  validates :url, presence: true

end
