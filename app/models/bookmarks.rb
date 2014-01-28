class Bookmark < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 100 }
  validates :url, presence: true
end
